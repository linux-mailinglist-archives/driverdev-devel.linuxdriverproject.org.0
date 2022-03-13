Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B13564D7856
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Mar 2022 22:11:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3439B81D73;
	Sun, 13 Mar 2022 21:11:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WFh93aJW9kta; Sun, 13 Mar 2022 21:11:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEA4181D70;
	Sun, 13 Mar 2022 21:11:03 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9B79B1BF309
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 13 Mar 2022 21:11:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 894F560AE6
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 13 Mar 2022 21:11:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=cedrierebernier.net
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 99A-PAcIOGKx
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 13 Mar 2022 21:11:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps39800.inmotionhosting.com (vps39800.inmotionhosting.com
 [199.250.200.57])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F19B960ACF
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 13 Mar 2022 21:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cedrierebernier.net; s=default; h=Date:Reply-To:Content-Type:To:Subject:
 From:Sender:Message-ID:Cc:MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U5nw2kBMi7vbI+GexvhmBpizsZlZtsbl0znCI1aRRrQ=; b=Qu+LFUAjrwhfBpoz3UxLTOG99E
 diS9oxaACiuF8t31Z9H83n3RIGB/X6MikmGrosvyFHBEWJcKlI6nKzGO969xUHoyIGDPo4sUNl/sQ
 leBUaoNEo0T3JVj5LAtcXtwfmavdyx5RzXc67UPQuQncxxvd4pMk+NC/5nUfauONWztK5qOjIqBP7
 3EFBJjAPf6JFzCDm42zA3VGgHMOnaXxa8mT45XGMeS+BMQAR6xer8j4/AP9/PlWNyvdcxWIReoK/w
 N9b92U4Wn+WAPdsXj9nZ44FTY/lG9xDj1giFZY/BV/uiKmzlew0Y3/eTOGi1NFRJUWyAI8C/1N5X3
 PWjvD6oQ==;
Received: from [83.137.6.244] (port=14832 helo=Windows)
 by vps39800.inmotionhosting.com with esmtpa (Exim 4.94.2)
 (envelope-from <info@enersac.com>) id 1nTVUM-0003NP-An
 for driverdev-devel@linuxdriverproject.org; Sun, 13 Mar 2022 17:10:58 -0400
From: "Ltd Finance" <info@enersac.com>
Subject: Gelegenheit zur Investition in ein lukratives
 =?ISO-8859-1?Q?Gesch=E4ft?=
To: driverdev-devel@linuxdriverproject.org
Date: Sun, 13 Mar 2022 21:10:53 +0000
X-Priority: 3
X-Library: Indy 8.0.25
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vps39800.inmotionhosting.com
X-AntiAbuse: Original Domain - linuxdriverproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - enersac.com
X-Get-Message-Sender-Via: vps39800.inmotionhosting.com: authenticated_id:
 info@cedrierebernier.net
X-Authenticated-Sender: vps39800.inmotionhosting.com: info@cedrierebernier.net
Message-Id: <20220313211100.894F560AE6@smtp3.osuosl.org>
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
Reply-To: info@enersac.com
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0375773736517569890=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============0375773736517569890==
Content-Type: text/plain;iso-8859-1

Lieber Partner,

Bitte finden Sie den Inhalt dieser Mail sehr vorteilhaft für unseren beiderseitigen Nutzen.

Ich habe mich entschlossen, Sie wegen einer Gelegenheit zu kontaktieren, in ein lukratives Geschäft in Ihrem Land zu investieren. Ich bin bereit, Ihnen 40 % als mein Geschäft anzubieten
Partner.

If you are interested, please reply me for more information on my privatee-mail: coxcameronhaven@zohomail.com

Mit freundlichen Grüßen: Cox Haven

--===============0375773736517569890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0375773736517569890==--
