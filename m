Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE701D287B
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 09:06:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39C2E89612;
	Thu, 14 May 2020 07:06:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X2XGROgMQiUX; Thu, 14 May 2020 07:06:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A934889356;
	Thu, 14 May 2020 07:06:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C140D1BF389
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 07:06:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BDEEE89356
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 07:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vfYQVILwJYtv for <devel@linuxdriverproject.org>;
 Thu, 14 May 2020 07:06:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 30ED589285
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 07:06:03 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id 188so1651432lfa.10
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 00:06:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AkkqkBerykie1YrDXFBzsGueOMJwtySKBnmKIyb/rqw=;
 b=tbFFc8gtImEmuZINRKyhToOMM6GCs6wkkrh9phI4GRazYs5RV9SQkdkyk08iKG2DHm
 OVkH4boO0Fb9ToEUUI05INw0faYi6c+yW3Z6BYraPBWRYl/ApPNoJBO99NVg+2C3BKi3
 CDLPdf0Fhh7BiNz0rthC7uJDAqnrKjUIzwqVq/uNN/DXtexNi8z+xr2N1VCWPLpoXOM1
 1R/Kdsq6T6Rra+TZY/fzh07UlbW/g+9nMnSELeSB/gXM0ewb2QFT3gBI9rXz+J287zpW
 F4TIVaxP59JI6f+Z6+lb+fM2z5guk5ZGz1ZNEanNXQGG6kM/m65dVcM2SN14DLSFnA2r
 21hQ==
X-Gm-Message-State: AOAM532R47EuWJckvyk13UVcytmsp3RWq3Q7MyEcrrLdd2GKVcnFlcbk
 Bikc4BWVZiP4vHjTcrOw5QwiIIvm
X-Google-Smtp-Source: ABdhPJz8HCH9ZpQl9l+RruScNIJF1fFDO1Ykv1t0+vZomr5Soo9N7qsIOBMEwdNO/Dwx0UEqrebWGQ==
X-Received: by 2002:a19:ad49:: with SMTP id s9mr2292027lfd.9.1589439961465;
 Thu, 14 May 2020 00:06:01 -0700 (PDT)
Received: from xi.terra (c-beaee455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.174.190])
 by smtp.gmail.com with ESMTPSA id k24sm911175ljg.92.2020.05.14.00.06.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 00:06:00 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1jZ7wQ-0001AB-Ut; Thu, 14 May 2020 09:06:03 +0200
From: Johan Hovold <johan@kernel.org>
To: David Lin <dtwlin@gmail.com>, Johan Hovold <johan@kernel.org>,
 Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: greybus: uart: replace driver line-coding struct
Date: Thu, 14 May 2020 09:05:48 +0200
Message-Id: <20200514070548.4423-1-johan@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Drop the driver version of the line-coding request and use the protocol
definition directly as was originally intended instead.

This specifically avoids having the two versions of what is supposed to
be the same struct ever getting out of sync.

Note that this has in fact already happened once when the protocol
definition had its implicit padding removed while the driver struct
wasn't updated. The fact that we used the size of the then larger driver
struct when memcpying its content to the stack didn't exactly make
things better. A later addition of a flow-control field incidentally
made the structures match again.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/staging/greybus/uart.c | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index 55c51143bb09..84de56800a21 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -40,14 +40,6 @@
 #define GB_UART_FIRMWARE_CREDITS	4096
 #define GB_UART_CREDIT_WAIT_TIMEOUT_MSEC	10000
 
-struct gb_tty_line_coding {
-	__le32	rate;
-	__u8	format;
-	__u8	parity;
-	__u8	data_bits;
-	__u8	flow_control;
-};
-
 struct gb_tty {
 	struct gbphy_device *gbphy_dev;
 	struct tty_port port;
@@ -66,7 +58,7 @@ struct gb_tty {
 	struct mutex mutex;
 	u8 ctrlin;	/* input control lines */
 	u8 ctrlout;	/* output control lines */
-	struct gb_tty_line_coding line_coding;
+	struct gb_uart_set_line_coding_request line_coding;
 	struct work_struct tx_work;
 	struct kfifo write_fifo;
 	bool close_pending;
@@ -288,12 +280,9 @@ static void  gb_uart_tx_write_work(struct work_struct *work)
 
 static int send_line_coding(struct gb_tty *tty)
 {
-	struct gb_uart_set_line_coding_request request;
-
-	memcpy(&request, &tty->line_coding,
-	       sizeof(tty->line_coding));
 	return gb_operation_sync(tty->connection, GB_UART_TYPE_SET_LINE_CODING,
-				 &request, sizeof(request), NULL, 0);
+				 &tty->line_coding, sizeof(tty->line_coding),
+				 NULL, 0);
 }
 
 static int send_control(struct gb_tty *gb_tty, u8 control)
@@ -493,9 +482,9 @@ static int gb_tty_break_ctl(struct tty_struct *tty, int state)
 static void gb_tty_set_termios(struct tty_struct *tty,
 			       struct ktermios *termios_old)
 {
+	struct gb_uart_set_line_coding_request newline;
 	struct gb_tty *gb_tty = tty->driver_data;
 	struct ktermios *termios = &tty->termios;
-	struct gb_tty_line_coding newline;
 	u8 newctrl = gb_tty->ctrlout;
 
 	newline.rate = cpu_to_le32(tty_get_baud_rate(tty));
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
