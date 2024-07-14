Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02565930993
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2024 12:39:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AFF480F64;
	Sun, 14 Jul 2024 10:39:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3eYsdENYBQo4; Sun, 14 Jul 2024 10:39:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DF4680F75
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DF4680F75;
	Sun, 14 Jul 2024 10:39:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E9831BF3E0
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2024 10:39:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C760605F5
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2024 10:39:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k92YaZawK8no for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2024 10:39:44 +0000 (UTC)
X-Greylist: delayed 563 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 14 Jul 2024 10:39:44 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2B314605E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B314605E9
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=62.162.71.33;
 helo=mail.fitr.mk; envelope-from=postmaster@fitr.mk; receiver=<UNKNOWN> 
Received: from mail.fitr.mk (mail.fitr.mk [62.162.71.33])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2B314605E9
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2024 10:39:43 +0000 (UTC)
Received: from [194.169.175.140] ([194.169.175.140]) by fitr.mk with
 MailEnable ESMTPA; Sun, 14 Jul 2024 12:29:21 +0200
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Your Donation reference number is ZKHRG45K.
To: Recipients <postmaster@fitr.mk>
From: postmaster@fitr.mk
Date: Sun, 14 Jul 2024 03:29:13 -0700
Message-ID: <D142FF6709A148A98D8FB7A23F813041.MAI@fitr.mk>
X-Envelope-Sender: <>
X-ME-Bayesian: 0.000000
X-Mailman-Original-DKIM-Signature: v=1; c=relaxed/relaxed;
 h=content-type:mime-version:content-transfer-encoding:content-description:subject:to:from:date:reply-to:message-id;
 d=fitr.mk; s=fitr; a=rsa-sha256;
 bh=9ncZUoNiv5a899Mb7Nbhmme3YVZzPccJLIojEL40chs=;
 b=kh6lxDUu/pNkDwjcn1LhgKK76J1ubnDZG6T9UESJxq2yh0mkFPurITRdFb7ygSM2K
 9AFthfE40qaTH3EUZnWKNTO1Y4e5MPID82soAQuUkBE1Wjg4dc961AtgfxtZfOj2sSP
 F0N9AR0w0hWhvpnbDB4Uenb0pEiTC0FmIEUwWkE=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=fitr.mk
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fitr.mk header.i=@fitr.mk
 header.a=rsa-sha256 header.s=fitr header.b=kh6lxDUu
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
Reply-To: anthonyhohnc@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello, =


The sum of =A32,500,000.00 has been donated to you from Chris Hohn DONATION=
 mega draw. You were selected through an automatic computer system drawn fr=
om over 10,000 companies and over 20,000,000 individuals email addresses wo=
rldwide, and your email ID was among the luckiest winners of the donation a=
nd that is why you got this mail. Here is your winning reference number ZKH=
RG45K. For claims, kindly contact me at Chrishohn1966@activist.com for more=
 info

You can also find out more about me at: https://en.wikipedia.org/wiki/Chris=
_Hohn

Warm Regards
Hedge fund manager
Sir Christopher Anthony Hohn
Email: Chrishohn1966@activist.com
Alternative Email: anthonyhohnc@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
