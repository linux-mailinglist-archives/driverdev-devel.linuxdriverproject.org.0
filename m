Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3490F7EC733
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Nov 2023 16:29:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 149FC60FEB;
	Wed, 15 Nov 2023 15:29:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 149FC60FEB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GICEGTc46gwq; Wed, 15 Nov 2023 15:29:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0FBB60F9D;
	Wed, 15 Nov 2023 15:29:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0FBB60F9D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 49CBF1BF3B9
 for <devel@linuxdriverproject.org>; Wed, 15 Nov 2023 15:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1BD594040D
 for <devel@linuxdriverproject.org>; Wed, 15 Nov 2023 15:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BD594040D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4XxqLTBY6kaL for <devel@linuxdriverproject.org>;
 Wed, 15 Nov 2023 15:29:12 +0000 (UTC)
X-Greylist: delayed 5441 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 15 Nov 2023 15:29:11 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A56664175E
Received: from mail.cls.vn (mail.cls.vn [14.225.5.136])
 by smtp2.osuosl.org (Postfix) with ESMTP id A56664175E
 for <devel@driverdev.osuosl.org>; Wed, 15 Nov 2023 15:29:11 +0000 (UTC)
X-MDAV-Result: clean
X-MDAV-Processed: mail.cls.vn, Wed, 15 Nov 2023 20:55:23 +0700
Received: from [51.195.53.194] by mail.cls.vn (MDaemon PRO v16.5.2) 
 with ESMTPA id md50005370713.msg for <devel@driverdev.osuosl.org>;
 Wed, 15 Nov 2023 20:55:21 +0700
X-Spam-Processed: mail.cls.vn, Wed, 15 Nov 2023 20:55:21 +0700
 (not processed: message from trusted or authenticated source)
X-MDRemoteIP: 51.195.53.194
X-MDHelo: [51.195.53.194]
X-MDArrival-Date: Wed, 15 Nov 2023 20:55:21 +0700
X-Authenticated-Sender: no-reply@cls.vn
X-Return-Path: prvs=1683af5748=no-reply@cls.vn
X-Envelope-From: no-reply@cls.vn
X-MDaemon-Deliver-To: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Description: Mail message body
Subject: my subject
To: Recipients <no-reply@cls.vn>
From: "Ms Toni"<no-reply@cls.vn >
Date: Wed, 15 Nov 2023 05:52:22 -0800
Message-Id: <20231115152913.1BD594040D@smtp2.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
 d=cls.vn; 
 s=MDaemon; t=1700056523; x=1700661323; i=no-reply@cls.vn;
 q=dns/txt; h=Content-Type:MIME-Version:Content-Transfer-Encoding:
 Content-Description:Subject:To:From:Date:Reply-To; bh=S0C1sjeHjK
 5aJ1yHp6QKSt2ig/RmqOwyBGPxLRqSYFQ=; b=R7imvLfLBw0jZfTYphGhNgkmTw
 G3f9/3ETQy6/29N/kkqeWmL7Rtlg2LpUz3JznW0l6A5JFK8IgPwpI3+YdLSw6diV
 wppG7X+dgdkkyXYROL9WvweIDsyuEY289+zjcwWLPZpPBS06Vrz66Zrl9yh0TLJF
 PgnyO7BOAGp7hJDAk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=cls.vn header.i=no-reply@cls.vn
 header.a=rsa-sha256 header.s=MDaemon header.b=R7imvLfL
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
Reply-To: tran24358@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I'm Toni Harris and I'm looking for a partner to work with in your country. I need assistance investing funds in your country. Email me to discuss this opportunity with you. Contact email: tran24358@gmail.com

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
