Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED48958EB75
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Aug 2022 13:45:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C833860BF5;
	Wed, 10 Aug 2022 11:45:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C833860BF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OVFl62ITTmx8; Wed, 10 Aug 2022 11:45:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94F4860BCF;
	Wed, 10 Aug 2022 11:45:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94F4860BCF
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA03B1BF314
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 10 Aug 2022 11:45:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B321D408E5
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 10 Aug 2022 11:45:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B321D408E5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AFzRwubYhEiG
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 10 Aug 2022 11:45:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D60B408C4
Received: from kayleetromp.ml (unknown [143.198.67.36])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6D60B408C4
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 10 Aug 2022 11:45:19 +0000 (UTC)
Received: from [103.99.1.70] (helo=User)
 by kayleetromp.ml with esmtpa (Exim 4.90_1)
 (envelope-from <lambert@kayleetromp.ml>)
 id 1oLk99-000404-P0; Wed, 10 Aug 2022 11:45:12 +0000
From: "Aleksandr Kovalenko"<lambert@kayleetromp.ml>
Subject: Hello friend, please reply back urgent
Date: Wed, 10 Aug 2022 04:45:13 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <E1oLk99-000404-P0@kayleetromp.ml>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=kayleetromp.ml; s=mail; h=Message-Id:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:Reply-To:Sender:To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dIx6Yx4LXX/qJzjFAER/70GMYpEQyump40U7Ra3zxP4=; b=iAtXSiGbzvJRQmbRMCvNjHIOyn
 IIuUbgLh9AoLNvWLA0h3+juwQ2fUyTGlAzoexZglkfGu7YuxPHAdFFoTPoAqZ2Y9+4ZIf1nA3VUOp
 WGc3krH2Fdo5mBuGdAE1hGBJwSHI9EAzQzp/GH6IXiopFNkBCShnkB6jfl5fRGqEthYE=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=kayleetromp.ml header.i=@kayleetromp.ml
 header.a=rsa-sha256 header.s=mail header.b=iAtXSiGb
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
Reply-To: alekskovnko@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

How are you today? I Hope you are staying safe,

I am Mr Aleksandr Kovalenko from Ukraine, Army General in the battle war commanding, I have very important business to share with you which will benefit both of us soonest

I will give you full details when I receive your interested reply

Best Regard,
Mr Aleksandr Kovalenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
