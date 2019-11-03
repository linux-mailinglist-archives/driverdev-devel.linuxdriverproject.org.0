Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C070ED1A8
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Nov 2019 05:03:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B32268AD61;
	Sun,  3 Nov 2019 04:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z46Ygoa6kqJE; Sun,  3 Nov 2019 04:03:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B97DF8A9F6;
	Sun,  3 Nov 2019 04:03:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3FD941BF30F
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 04:03:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 34EB28A9F4
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 04:03:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZFgWsNP4FEA4 for <devel@linuxdriverproject.org>;
 Sun,  3 Nov 2019 04:03:01 +0000 (UTC)
X-Greylist: delayed 00:09:33 by SQLgrey-1.7.6
Received: from ired01.nspmanaged.com (static-68-235-35-92.cust.tzulo.com
 [68.235.35.92])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B3E978A9F1
 for <devel@driverdev.osuosl.org>; Sun,  3 Nov 2019 04:03:00 +0000 (UTC)
Received: from ired01.nspmanaged.com (localhost [127.0.0.1])
 by ired01.nspmanaged.com (Postfix) with ESMTP id 475MTy1czpz31Pk
 for <devel@driverdev.osuosl.org>; Sun,  3 Nov 2019 03:53:26 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at 
Authentication-Results: ired01.nspmanaged.com (amavisd-new);
 dkim=pass (1024-bit key) header.d=valedocedro.com.br
Received: from ired01.nspmanaged.com ([127.0.0.1])
 by ired01.nspmanaged.com (ired01.nspmanaged.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id ZOqfJOm9kBMK for <devel@driverdev.osuosl.org>;
 Sun,  3 Nov 2019 03:53:25 +0000 (UTC)
Received: from pleskw.nspmanaged.com (pleskw.nspmanaged.com [144.217.107.116])
 by ired01.nspmanaged.com (Postfix) with ESMTPS id 475MTx5pcfz31PV
 for <devel@driverdev.osuosl.org>; Sun,  3 Nov 2019 03:53:25 +0000 (UTC)
dkim-signature: v=1; c=relaxed/relaxed;
 h=date:subject:message-id:from:to:content-transfer-encoding:content-type; 
 d=valedocedro.com.br; s=default; a=rsa-sha256;
 bh=V26Mllvyga9bHUsNQQra4ZoYzBejtbEOj2MiPR7GNIw=;
 b=PTcu7X3T9grE9fIkP61SE2UzfoGB0hBcPCAnrT6YK8dja8kOjdWxIXrCtBc1yXnMN
 NUYNUdyMHGcPbDNiLg0jg9m128WHcayj7PRTKlaf9M/ceGp1W+vsK7GMdRSaAjvVD7f
 rtb3XGa4szla6nvXTPGcuG8HPfbr4uW/Yf+9HOg=;
Received: from ognjhxmlgt ([185.234.217.207]) by pleskw.nspmanaged.com with
 MailEnable ESMTPSA (version=TLS1 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA);
 Sun, 3 Nov 2019 01:53:24 -0200
Date: Sun, 3 Nov 2019 11:53:24 +0800
Subject: ***Spam*** Your operating system has been hacked by cybercriminals.
 Change the authorization method.
Message-ID: <aeiddh6tlcwx144u.1537537117128@valedocedro.com.br>
From: "Login Alert" <luciano@valedocedro.com.br>
To: devel@driverdev.osuosl.org
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello!

I am a hacker who has access to your operating system.
I also have full access to your account.

I've been watching you for a few months now.
The fact is that you were infected with malware through an adult site that you visited.

If you are not familiar with this, I will explain.
Trojan Virus gives me full access and control over a computer or other device.
This means that I can see everything on your screen, turn on the camera and microphone, but you do not know about it.

I also have access to all your contacts and all your correspondence.

Why your antivirus did not detect malware?
Answer: My malware uses the driver, I update its signatures every 4 hours so that your antivirus is silent.

I made a video showing how you satisfy yourself in the left half of the screen, and in the right half you see the video that you watched.
With one click of the mouse, I can send this video to all your emails and contacts on social networks.
I can also post access to all your e-mail correspondence and messengers that you use.

If you want to prevent this,
transfer the amount of $645 to my bitcoin address (if you do not know how to do this, write to Google: "Buy Bitcoin").

My bitcoin address (BTC Wallet) is: 15xmLXBr6rX7c87LRWXswHjCqnvuqJpMwg

After receiving the payment, I will delete the video and you will never hear me again.
I give you 50 hours (more than 2 days) to pay.
I have a notice reading this letter, and the timer will work when you see this letter.

Filing a complaint somewhere does not make sense because this email cannot be tracked like my bitcoin address.
I do not make any mistakes.

If I find that you have shared this message with someone else, the video will be immediately distributed.


Best regards!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
