Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 911024D743A
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Mar 2022 11:28:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0563460E93;
	Sun, 13 Mar 2022 10:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xYUI23jZ2rYd; Sun, 13 Mar 2022 10:28:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAC1A60777;
	Sun, 13 Mar 2022 10:28:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5FE51BF341
 for <devel@linuxdriverproject.org>; Sun, 13 Mar 2022 10:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AFB8340480
 for <devel@linuxdriverproject.org>; Sun, 13 Mar 2022 10:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=cedrierebernier.net
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d_VxzQcbQz8v for <devel@linuxdriverproject.org>;
 Sun, 13 Mar 2022 10:28:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps39800.inmotionhosting.com (vps39800.inmotionhosting.com
 [199.250.200.57])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF1CB400FF
 for <devel@driverdev.osuosl.org>; Sun, 13 Mar 2022 10:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cedrierebernier.net; s=default; h=Date:Reply-To:Content-Type:To:Subject:
 From:Sender:Message-ID:Cc:MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WIcMX2kFKgF8I5B4YoeKLS4GWziF8webv+gu49VWm0M=; b=wjyxBPItxn1BGfWINesFt8YlKm
 ubNN2wXD2KQTPn0w/TK2z5KqkQVff8fyzzrU6QsKMoZFMJ8rhJcEwaNWzmJKhrfbSwLBDGnKO8s2M
 Y7CdH6ZJmqmd8P2Z16npw1OZfyYzn9Erc8Rdxcmhh8II909YBgfyuvjQOBqaULkXt/lrd3OH0FEIz
 i4hiugaBIqZCmVWfQmhclvYgiSPe9JJpmJWUvvl5YVIACpkHFtPtkmn519lC+583xRez44ugswG3k
 IA4lGpbHxUfzQz7/Ch7RJ4NO+DdZou4d+0konAYOKgXjR7L0KKOyVVCVz5FMiq37o8Jc17OZm7J00
 22Fr4b8w==;
Received: from [83.137.6.244] (port=36075 helo=Windows)
 by vps39800.inmotionhosting.com with esmtpa (Exim 4.94.2)
 (envelope-from <info@enersac.com>) id 1nTLSZ-0007Rj-Rt
 for devel@driverdev.osuosl.org; Sun, 13 Mar 2022 06:28:27 -0400
From: "Ltd Finance" <info@enersac.com>
Subject: Gelegenheit zur Investition in ein lukratives
 =?ISO-8859-1?Q?Gesch=E4ft?=
To: devel@driverdev.osuosl.org
Date: Sun, 13 Mar 2022 10:28:23 +0000
X-Priority: 3
X-Library: Indy 8.0.25
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vps39800.inmotionhosting.com
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - enersac.com
X-Get-Message-Sender-Via: vps39800.inmotionhosting.com: authenticated_id:
 info@cedrierebernier.net
X-Authenticated-Sender: vps39800.inmotionhosting.com: info@cedrierebernier.net
Message-Id: <20220313102829.AFB8340480@smtp2.osuosl.org>
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
Content-Type: multipart/mixed; boundary="===============5384854338537151031=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============5384854338537151031==
Content-Type: text/plain;iso-8859-1

Lieber Partner,

Bitte finden Sie den Inhalt dieser Mail sehr vorteilhaft für unseren beiderseitigen Nutzen.

Ich habe mich entschlossen, Sie wegen einer Gelegenheit zu kontaktieren, in ein lukratives Geschäft in Ihrem Land zu investieren. Ich bin bereit, Ihnen 40 % als mein Geschäft anzubieten
Partner.

If you are interested, please reply me for more information on my privatee-mail: coxcameronhaven@gmail.com

Mit freundlichen Grüßen: Cox Haven

--===============5384854338537151031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5384854338537151031==--
