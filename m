Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC08C54E0B8
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jun 2022 14:23:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75AA960E4D;
	Thu, 16 Jun 2022 12:23:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lImYpn2daJX0; Thu, 16 Jun 2022 12:23:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E58C60670;
	Thu, 16 Jun 2022 12:23:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 62D191BF331
 for <devel@linuxdriverproject.org>; Thu, 16 Jun 2022 12:23:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5FEB860670
 for <devel@linuxdriverproject.org>; Thu, 16 Jun 2022 12:23:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fjhxxWlm23te for <devel@linuxdriverproject.org>;
 Thu, 16 Jun 2022 12:23:16 +0000 (UTC)
X-Greylist: delayed 04:50:50 by SQLgrey-1.8.0
Received: from me-region.ru (spb.major-express.ru [178.238.126.75])
 by smtp3.osuosl.org (Postfix) with SMTP id 7485A60E4D
 for <devel@driverdev.osuosl.org>; Thu, 16 Jun 2022 12:23:05 +0000 (UTC)
Received: from rmail.major-express.ru (rmail [127.0.0.1])
 by me-region.ru (Postfix) with ESMTP id 26B4A2BE79C
 for <devel@driverdev.osuosl.org>; Thu, 16 Jun 2022 10:32:10 +0300 (MSK)
Authentication-Results: rmail.major-express.ru (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)" header.d=me-region.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=me-region.ru; h=
 reply-to:date:date:from:from:to:subject:subject
 :content-description:content-transfer-encoding:mime-version
 :content-type:content-type; s=dkim; t=1655364729; x=1656228730;
 bh=q+AB6wTcFowTQDN3yBj6V7w56hj7BQnkh6i5A0MwiTQ=; b=m2el3MxcBhu0
 ekXod4xTQ9d+H3t3c5DOIHHZGznWNUHt/T0qqA6Rae55PSDLP1iIaRUsPjbeHesH
 DqriT95u7g6aA9SRkw5lx+904RZx+7U1x1w61WLq6ZBcnCtIRirN2ad/pC7ojBTM
 Iz0SAb4aoO8jPhCmNJyMxQ9O2CIRCz4=
X-Virus-Scanned: Debian amavisd-new at rmail
Received: from me-region.ru ([127.0.0.1])
 by rmail.major-express.ru (rmail.major-express.ru [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id WgcLUEFMXvmt for <devel@driverdev.osuosl.org>;
 Thu, 16 Jun 2022 10:32:09 +0300 (MSK)
Received: from [2.56.59.106] (unknown [2.56.59.106])
 by me-region.ru (Postfix) with ESMTPSA id CA26B2B165C;
 Wed, 15 Jun 2022 12:33:03 +0300 (MSK)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Good day, 93.189.94.68
To: Recipients <postmaster@me-region.ru>
From: "Lynn Page" <postmaster@me-region.ru>
Date: Wed, 15 Jun 2022 02:32:58 -0700
Message-Id: <20220616073210.26B4A2BE79C@me-region.ru>
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
Reply-To: lewislekan@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day,

This email will come to your as surprise, i will like to discuss Business Proposal with u Kindly get back to me asap

Mrs.Lynn Page
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
