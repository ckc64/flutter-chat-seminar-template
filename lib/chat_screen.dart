import 'package:flutter/material.dart';
import 'package:flutter_chat/widgets/message_bubble.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<String> _messages = []; // List to store messages
  final TextEditingController _controller =
      TextEditingController(); // Controller for TextField
  final ScrollController _scrollController =
      ScrollController(); // Controller for ListView scrolling

  void _sendMessage() {
    if (_controller.text.trim().isNotEmpty) {
      setState(() {
        _messages.add(_controller.text.trim()); // Add message to the list
        _controller.clear(); // Clear the input field
      });
      // _scrollToBottom(); // Scroll to the latest message
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the TextEditingController
    _scrollController.dispose(); // Dispose of the ScrollController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Handle logout logic here
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  controller: _scrollController, // Attach ScrollController
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    final isSentByUser =
                        index % 2 == 0; // Example logic for alignment
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Align(
                        alignment:
                            isSentByUser
                                ? Alignment.centerRight
                                : Alignment.centerLeft, // Align based on sender
                        child: Slidable(
                          endActionPane:
                              isSentByUser
                                  ? ActionPane(
                                    motion: const ScrollMotion(),
                                    children: [
                                      SlidableAction(
                                        onPressed: (_) {},
                                        backgroundColor: Colors.blue,
                                        foregroundColor: Colors.white,
                                        icon: Icons.edit,
                                        label: 'Edit',
                                      ),
                                      SlidableAction(
                                        onPressed: (_) {},
                                        backgroundColor: Colors.red,
                                        foregroundColor: Colors.white,
                                        icon: Icons.delete,
                                        label: 'Delete',
                                      ),
                                    ],
                                  )
                                  : null,
                          child: MessageBubble(
                            message: _messages[index],
                            isMe: isSentByUser,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller, // Attach controller to TextField
                      decoration: const InputDecoration(
                        hintText: 'Type a message',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _sendMessage,
                    child: const Text('Send'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
