Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C24DA95D55A
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Aug 2024 20:37:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE8DF60653;
	Fri, 23 Aug 2024 18:37:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F7Qz1LhSMREo; Fri, 23 Aug 2024 18:37:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9F57612E7
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9F57612E7;
	Fri, 23 Aug 2024 18:37:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33FCE1BF2E4
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2024 18:37:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2065040297
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2024 18:37:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sZ_HXLiZKx4g for <devel@linuxdriverproject.org>;
 Fri, 23 Aug 2024 18:37:22 +0000 (UTC)
X-Greylist: delayed 19836 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 23 Aug 2024 18:37:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E38E140288
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E38E140288
Received: from nuklearnimedicina.vs.fortion.net (244.84.175.185.cz
 [185.175.84.244])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E38E140288
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2024 18:37:21 +0000 (UTC)
Received: from apache by nuklearnimedicina.vs.fortion.net with local (Exim
 4.92.3) (envelope-from <support@nuklearnimedicina.cz>)
 id 1shZ9z-0002Av-PY
 for devel@linuxdriverproject.org; Fri, 23 Aug 2024 20:37:19 +0200
To: devel@linuxdriverproject.org
Subject: Inquiry
X-PHP-Originating-Script: 48:mic.php
Date: Fri, 23 Aug 2024 20:37:19 +0200
From: Gilyana Amykova <support@nuklearnimedicina.cz>
Message-ID: <386c30489a441a6c83276d73126611f4@www.nuklearnimedicina.cz>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=nuklearnimedicina.cz; s=fortion; h=Content-Type:MIME-Version:Message-ID:
 Reply-To:From:Date:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B8dDFZbtWQMDdMYOke/DzADzPYYaU7tQQHp1l4Jtkgk=; b=mhUet/8+17t05JKFtU/cBJLBW/
 a2U37A2q1qDFtIwJy0SI9C4aBSo1VWR0vV0HGIEpAC+qLFVnVPtv7AMTbJBiWAeTiMJkCt6wwjnWU
 9FYZR6oLvapxIh+lxw/XHeAs+YDwpCgDzsbXiSoSS/E/R9pWvmhHagGpaXSYEEXe4shW4eeOyRqX/
 K+BpiZfS2eQnbMGgdrKxIL8Mmq5WToOOio/ALAvUhmA9OYLI953WBtmqcINXj7+2GPESFvKEOvYuF
 ViZH/dczq72CpY063Pq5jeyvnj1RufKAvRf12iBYHfV0sdxYIX78b1yZL8uPZ20bC0FBaHq8WgjWj
 m3hhFK/w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=nuklearnimedicina.cz
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org; spf=fail
 smtp.mailfrom=nuklearnimedicina.cz
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
Reply-To: GilyanaAmykova@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

Warm greetings!

I'm Gilyana Armykova the procurement manager of Corteva Industry SA Headquarters, I contacted your company through your business platform

We would love to purchase your products, and we will need a Minimum order quantity(MOQ) currently. Kindly send us your product list/catalog, payment terms, and delivery time to enable us to process our order.

I'm looking forward to your quick reply.

Best Regards,

Gilyana Amykova

Procurement Manager Corteva Industry SA Headquarters Av. Novelistas 5129 Colonia Jardines Vallarta

Zapopan, Jalisco, Mexico, CP 45027

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
