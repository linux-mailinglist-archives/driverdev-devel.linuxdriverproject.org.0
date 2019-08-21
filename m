Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B15993F8
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 14:39:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 073008214C;
	Thu, 22 Aug 2019 12:39:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gaHop4T2cgPz; Thu, 22 Aug 2019 12:39:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A19FD816F9;
	Thu, 22 Aug 2019 12:39:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EB09F1BF409
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 12:38:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E81D921543
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 12:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DFI6KVq9NXwx for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 12:38:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 187C12152E
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 12:38:58 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id k2so5292871wrq.2
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 05:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2yyL+3tM9mSt5kE1ALeX6Ty5QXmmZMrb4tbRBsxGTeE=;
 b=S+lrkLL6LmaTWZ3kaj59RfGGeeE1zezGYh6F892O434uwJEZQOg2XD3RGHbVhf3zAm
 tTHKhvmxSvON1rh+c/eaAfY0lsR3UPkhGRgu6ytfUuxYHI1vh5irHmJOs5B1PALYQPeo
 Z4jfw5qnG6cpWG1vElUD26JIo3MWJVwjETCK+RVO9dhTlauq6m5QF6AXo5nxXWTY8gOG
 OGGll9V/mGcIGTiGRQcsqyqeyaTeaGfGkA+QYxXuDsWf+dCEl1bVMssikurAlmwV1lqb
 IoFkGMUYO6cfP48T6lye4sMwLFqaN9fI9ojPQtH3L4iZJwkVj5+i2r1jAXrJppzU02Xa
 wGdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2yyL+3tM9mSt5kE1ALeX6Ty5QXmmZMrb4tbRBsxGTeE=;
 b=OeNUmeOrfvyFg7nLdn1JaKolTPBCWgzxhVNtKL56rTIW0c7/tYeQKLtkMi0NPbpmR9
 3aOCA5i7yrQhQR9m6iaISjkmK1fQbQESuYQQw59j5YnGx5DRrT0QyihUPN3CZvw/54sw
 Hq8wkZMf8Ftg31H7cjB0oZDV7NYn1Ud+12cfJGJnT0llC6pIIkQ37zlHmJyLDscFr4UI
 ECwrUciw1eVVEYTN2Xuu7P/qXdRpcedybN77BfT91nCEWVOzqw8My/kTki6zoAcuf/co
 3k8v9sO9V+brxE82SZjeALxJLsysSnVAgzu6Hx/oFuZ4w+48CB7FPLyaAuQGH+Ss/Mwq
 rNTA==
X-Gm-Message-State: APjAAAVQbR7ZTEHNpYQciqGm0ft7x1xXun92RidMsvE9guZVbse5EgJl
 NDZTFfq1/soOK2QR7c8aMZw=
X-Google-Smtp-Source: APXvYqyUryLr5qmc3F8K9mBFiNnf8qDauD9NslXpIU3ZO2/cMJ0v1ikma5jdOyRHvow2F8goEmk68w==
X-Received: by 2002:a5d:4f81:: with SMTP id d1mr47254318wru.177.1566477536353; 
 Thu, 22 Aug 2019 05:38:56 -0700 (PDT)
Received: from localhost.localdomain.localdomain (67.200.broadband2.iol.cz.
 [83.208.200.67])
 by smtp.googlemail.com with ESMTPSA id r17sm60719483wrg.93.2019.08.22.05.38.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 05:38:55 -0700 (PDT)
From: Martin Tomes <tomesm@gmail.com>
To: isdn@linux-pingi.de
Subject: [PATCH] Staging: isdn/gigaset : Fix bare unsigned warnings and
 trailing lines errors
Date: Wed, 21 Aug 2019 15:27:39 +0000
Message-Id: <1566401259-16921-1-git-send-email-tomesm@gmail.com>
X-Mailer: git-send-email 1.8.3.1
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Martin Tomes <tomesm@gmail.com>,
 netdev@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are many bare use of unsigned warnings and trailing statements should be on next line errors from checkpatch.pl script.
Change the code by adding 'unsigned int'. Move 'break' statement of 'switch' command to next line.

Signed-off-by: Martin Tomes <tomesm@gmail.com>
---
 drivers/staging/isdn/gigaset/usb-gigaset.c | 52 ++++++++++++++++++------------
 1 file changed, 31 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/isdn/gigaset/usb-gigaset.c b/drivers/staging/isdn/gigaset/usb-gigaset.c
index 1b9b436..d565242 100644
--- a/drivers/staging/isdn/gigaset/usb-gigaset.c
+++ b/drivers/staging/isdn/gigaset/usb-gigaset.c
@@ -143,16 +143,16 @@ struct usb_cardstate {
 	char			bchars[6];		/* for request 0x19 */
 };
 
-static inline unsigned tiocm_to_gigaset(unsigned state)
+static inline unsigned int tiocm_to_gigaset(unsigned int state)
 {
 	return ((state & TIOCM_DTR) ? 1 : 0) | ((state & TIOCM_RTS) ? 2 : 0);
 }
 
-static int gigaset_set_modem_ctrl(struct cardstate *cs, unsigned old_state,
-				  unsigned new_state)
+static int gigaset_set_modem_ctrl(struct cardstate *cs, unsigned int old_state,
+				  unsigned int new_state)
 {
 	struct usb_device *udev = cs->hw.usb->udev;
-	unsigned mask, val;
+	unsigned int mask, val;
 	int r;
 
 	mask = tiocm_to_gigaset(old_state ^ new_state);
@@ -178,7 +178,7 @@ static int set_value(struct cardstate *cs, u8 req, u16 val)
 	int r, r2;
 
 	gig_dbg(DEBUG_USBREQ, "request %02x (%04x)",
-		(unsigned)req, (unsigned)val);
+		(unsigned int)req, (unsigned int)val);
 	r = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 0x12, 0x41,
 			    0xf /*?*/, 0, NULL, 0, 2000 /*?*/);
 	/* no idea what this does */
@@ -191,7 +191,7 @@ static int set_value(struct cardstate *cs, u8 req, u16 val)
 			    val, 0, NULL, 0, 2000 /*?*/);
 	if (r < 0)
 		dev_err(&udev->dev, "error %d on request 0x%02x\n",
-			-r, (unsigned)req);
+			-r, (unsigned int)req);
 
 	r2 = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 0x19, 0x41,
 			     0, 0, cs->hw.usb->bchars, 6, 2000 /*?*/);
@@ -205,7 +205,7 @@ static int set_value(struct cardstate *cs, u8 req, u16 val)
  * set the baud rate on the internal serial adapter
  * using the undocumented parameter setting command
  */
-static int gigaset_baud_rate(struct cardstate *cs, unsigned cflag)
+static int gigaset_baud_rate(struct cardstate *cs, unsigned int cflag)
 {
 	u16 val;
 	u32 rate;
@@ -213,16 +213,26 @@ static int gigaset_baud_rate(struct cardstate *cs, unsigned cflag)
 	cflag &= CBAUD;
 
 	switch (cflag) {
-	case    B300: rate =     300; break;
-	case    B600: rate =     600; break;
-	case   B1200: rate =    1200; break;
-	case   B2400: rate =    2400; break;
-	case   B4800: rate =    4800; break;
-	case   B9600: rate =    9600; break;
-	case  B19200: rate =   19200; break;
-	case  B38400: rate =   38400; break;
-	case  B57600: rate =   57600; break;
-	case B115200: rate =  115200; break;
+	case    B300: rate =     300;
+		      break;
+	case    B600: rate =     600;
+		      break;
+	case   B1200: rate =    1200;
+		      break;
+	case   B2400: rate =    2400;
+		      break;
+	case   B4800: rate =    4800;
+		      break;
+	case   B9600: rate =    9600;
+		      break;
+	case  B19200: rate =   19200;
+		      break;
+	case  B38400: rate =   38400;
+		      break;
+	case  B57600: rate =   57600;
+		      break;
+	case B115200: rate =  115200;
+		      break;
 	default:
 		rate =  9600;
 		dev_err(cs->dev, "unsupported baudrate request 0x%x,"
@@ -345,7 +355,7 @@ static void gigaset_read_int_callback(struct urb *urb)
 	struct inbuf_t *inbuf = cs->inbuf;
 	int status = urb->status;
 	int r;
-	unsigned numbytes;
+	unsigned int numbytes;
 	unsigned char *src;
 	unsigned long flags;
 
@@ -357,7 +367,7 @@ static void gigaset_read_int_callback(struct urb *urb)
 			if (unlikely(*src))
 				dev_warn(cs->dev,
 					 "%s: There was no leading 0, but 0x%02x!\n",
-					 __func__, (unsigned) *src);
+					 __func__, (unsigned int) *src);
 			++src; /* skip leading 0x00 */
 			--numbytes;
 			if (gigaset_fill_inbuf(inbuf, src, numbytes)) {
@@ -517,7 +527,7 @@ static int gigaset_write_cmd(struct cardstate *cs, struct cmdbuf_t *cb)
 
 static int gigaset_write_room(struct cardstate *cs)
 {
-	unsigned bytes;
+	unsigned int bytes;
 
 	bytes = cs->cmdbytes;
 	return bytes < IF_WRITEBUF ? IF_WRITEBUF - bytes : 0;
@@ -611,7 +621,7 @@ static int write_modem(struct cardstate *cs)
 	}
 
 	/* Copy data to bulk out buffer and transmit data */
-	count = min(bcs->tx_skb->len, (unsigned) ucs->bulk_out_size);
+	count = min(bcs->tx_skb->len, (unsigned int) ucs->bulk_out_size);
 	skb_copy_from_linear_data(bcs->tx_skb, ucs->bulk_out_buffer, count);
 	skb_pull(bcs->tx_skb, count);
 	ucs->busy = 1;
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
