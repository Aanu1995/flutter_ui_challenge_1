class Chat {
  final int id;
  final String name;
  final String lastMessage;
  final String image;
  final int unRead;
  final String lastSeen;
  final String lastMessageTime;
  final String about;

  const Chat({
    this.id,
    this.name,
    this.lastMessage,
    this.unRead,
    this.image,
    this.lastSeen,
    this.about,
    this.lastMessageTime,
  });
}
