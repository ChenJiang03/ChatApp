# Initial Deployment of Online Chat Software

## **Project Overview:**
# Project is still under development phase
1. **Registration & Login**: Users need to register before logging in, or can log in via QQ or WeChat.
2. **Add/Delete Friends**: Users can send friend requests and choose to accept or decline. If unhappy with the chat, they can delete the friend.
3. **Chat**: After accepting the friend request, the two friends can chat.
4. **View Real-time Online Friends**: Users can see which friends are online. After logging in, they can set themselves as invisible.
5. **Friend Circle**: Similar to QQ, you can only see posts from your friends, but you can see all comments below, no matter whether the commenter is a friend or not.

## **Detailed Description:**

### **1. Registration & Login:**
- **User Registration**:
    a. User enters username, password, nickname, and phone number. The username must be unique, between 5-15 characters.
    b. Users need phone verification to register. A phone number can register up to five users. If reached, need to cancel an account to register again.
    c. Besides phone verification, users also need a sliding captcha.
    d. Users can also log in with WeChat QR code. The username will be the phone number + 6 random digits.
- **User Login**:
    a. Login with WeChat QR code.
    b. Login with username and password and slide the captcha.
    c. Login with phone verification, but still need to slide the captcha.
- **User Cancellation**:
    a. If a user no longer wants the account, they can click "Cancel this Account".
    b. A code is sent to the phone for verification.
    c. After verification, a warning is given about data deletion.

### **2. Add/Delete Friends:**
- **Add Friends**:
    a. Find friends via username or QR code.
    b. After finding, you can view the user's profile. There's an "Add Friend" option on the top right.
    c. The receiver can accept or decline the request.
- **Delete Friends**:
    a. There's a friend list. Clicking on a friend's icon takes you to their profile, where you can delete them.
    b. If a user cancels their account, they disappear from all friend lists but chats and comments remain.

### **3. Chat:**
1. If users are friends, they can chat. If one is offline, they won't see the message until they're online.
2. Non-friends can't chat.
3. After deleting a friend, chat history remains.
4. Deleting chat archives erases the chat on one side but not the other.

### **4. View Real-time Online Friends:**
1. View which friends are online.
2. Set visibility: Online mode shows real status; Invisible mode shows you as offline.

### **5. Friend Circle:**
1. **Post**:
    a. Support text and images. You can edit text.
    b. Posts can be set to be visible only to yourself.
2. **Like**:
    a. Friends can like and unlike posts. Everyone can see likes and comments.
3. **Delete**:
    a. Posts can be deleted. All related likes and comments are removed.

## **Admin Functions:**
### **1. User Management**:
    a. Ban user.
    b. Unban user.
    c. Delete user.
    d. Modify user data.
    e. Search users.
    f. View user list, friend lists, and all their posts. Admins can delete posts.
### **2. Friend Circle Management**:
    a. View all posts.
    b. Search by username, keywords, or time.
    c. Delete posts that violate rules.
