Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 794B77EC3F6
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Nov 2023 14:45:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B6834417DE;
	Wed, 15 Nov 2023 13:45:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6834417DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g82jJOF03NKN; Wed, 15 Nov 2023 13:45:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79CAD417BA;
	Wed, 15 Nov 2023 13:45:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79CAD417BA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 45E331BF228
 for <devel@linuxdriverproject.org>; Wed, 15 Nov 2023 13:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A621417F9
 for <devel@linuxdriverproject.org>; Wed, 15 Nov 2023 13:45:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A621417F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gNXIYslr8XLV for <devel@linuxdriverproject.org>;
 Wed, 15 Nov 2023 13:45:04 +0000 (UTC)
X-Greylist: delayed 1978 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 15 Nov 2023 13:45:03 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F90940585
Received: from mail.cls.vn (mail.cls.vn [14.225.5.136])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F90940585
 for <devel@linuxdriverproject.org>; Wed, 15 Nov 2023 13:45:03 +0000 (UTC)
X-MDAV-Result: clean
X-MDAV-Processed: mail.cls.vn, Wed, 15 Nov 2023 20:11:22 +0700
Received: from [51.195.53.194] by mail.cls.vn (MDaemon PRO v16.5.2) 
 with ESMTPA id md50005369936.msg for <devel@linuxdriverproject.org>;
 Wed, 15 Nov 2023 20:11:21 +0700
X-Spam-Processed: mail.cls.vn, Wed, 15 Nov 2023 20:11:21 +0700
 (not processed: message from trusted or authenticated source)
X-MDRemoteIP: 51.195.53.194
X-MDHelo: [51.195.53.194]
X-MDArrival-Date: Wed, 15 Nov 2023 20:11:21 +0700
X-Authenticated-Sender: no-reply@cls.vn
X-Return-Path: prvs=1683af5748=no-reply@cls.vn
X-Envelope-From: no-reply@cls.vn
X-MDaemon-Deliver-To: devel@linuxdriverproject.org
MIME-Version: 1.0
Content-Description: Mail message body
Subject: my subject
To: Recipients <no-reply@cls.vn>
From: "Ms Toni"<no-reply@cls.vn >
Date: Wed, 15 Nov 2023 05:11:18 -0800
Message-Id: <20231115134505.1A621417F9@smtp2.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
 d=cls.vn; 
 s=MDaemon; t=1700053882; x=1700658682; i=no-reply@cls.vn;
 q=dns/txt; h=Content-Type:MIME-Version:Content-Transfer-Encoding:
 Content-Description:Subject:To:From:Date:Reply-To; bh=S0C1sjeHjK
 5aJ1yHp6QKSt2ig/RmqOwyBGPxLRqSYFQ=; b=jDfcTWj8cYUIGybp90aHTTVSUb
 vMpw+MNiGhlj+4t+dDgYOoL0b9X7HwCGaXrEMdDE2/olGf67LetEOnKHkaHuPD5z
 W478tQLT/ujWT/PBpYU50KIM/iX8i+n1qyntGeWbbCMpoR67z+Aj3BfqD38eXjMC
 CVri52ofHNH0Q3IoY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=cls.vn header.i=no-reply@cls.vn
 header.a=rsa-sha256 header.s=MDaemon header.b=jDfcTWj8
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
