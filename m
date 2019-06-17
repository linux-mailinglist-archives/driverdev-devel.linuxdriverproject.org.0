Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0816447B00
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 09:29:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 740E180AD3;
	Mon, 17 Jun 2019 07:29:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TvegW3mGNDO2; Mon, 17 Jun 2019 07:29:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 36E6A80EBD;
	Mon, 17 Jun 2019 07:29:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E0DA1BF3E3
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 07:29:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9B609868F7
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 07:29:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ArgksXEyW7SI for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 07:29:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from slot0.nejknio.cf (slot0.nejknio.cf [89.32.41.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F180C86632
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 07:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=nejknio.cf;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To:Message-ID;
 i=trade1@nejknio.cf; bh=73Xs4LxjK+lP+h5mKCyFyWTpkoQ=;
 b=LD9EJj7vfMOLyVIaANFPUjprKBq8mZtfA99t+rUJqYCSGdbYzUp45oBhi/HQhidPQJORaAWepv8c
 fBb9KCYsMfZhWSZ4ym8qaBYiTzxVBsqsJThgUsQKl2OrJ8pPlOv1YFxV+oDBh8REC2GF6TwUhq/S
 eKJXX8LKlK66pkwFw0Qmx+GzqE2jvghz0fH+HjOigQQZJngpAS/8dhsfoCYoyQV5iL+HsSxjofEg
 RLcMZ8wBIAyD6Z9MMLSz4dYr0/kwt8Jiaeh/QW5VhMAlTRRShCcy1oAoO+L7C204X2LjCSjzrvhY
 /xOdUbig+ZWLjG84k4pvxPYVNIZfPF8T4ZPZGw==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=nejknio.cf;
 b=YCs/KsolSdVj+hLsAIF17HnvvRYu6b2jAHRYOoA5pbAvrirp/qGqruJm+t0UWCJ9p5/ENWFgkVsD
 vk90pv+iO3Pk3n6q34syWO3SPMRGZ8QhI8Vt/XMoq3zJiPXzdzeSqTr0BxsMtxyai3zVoLkMb1uP
 CynVJNJNWJoXFT5jMN64EJUYvSg8cEeXuO6MPSuxwGNVUh1zIN3/O4IojR568bBZ0ty8DJtLIif9
 dNrLGN56myqdKu/Kzn6QeCQCc1ccgWbgljkd61M9dv93JMBOm512r1RCIDPIz0Kh2/hDL+HmtrUf
 7JYwjeaz/H0mGAMiKwxrj614gLo3hvn84pIiQg==;
MIME-Version: 1.0
Content-Description: Mail message body
Subject: PRODUCT INQUIRY FOR EXPORT SHIPMENT
To: Recipients <trade1@nejknio.cf>
From: "Mark Maths" <trade1@nejknio.cf >
Date: Mon, 17 Jun 2019 10:09:14 +0300
Message-ID: <0.0.1.893.1D524DB871139CA.0@slot0.nejknio.cf>
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
Reply-To: purchase_m.maths@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Sales team,
 
In furtherance to our market research, we have reviewed all your products types and we have finally interested in your product for our market here in 

United State for your production. We introduce ourselves as Emilxa Tram SRL, A general group of company located in the United State. 

We are sourcing for new suppliers from your location 

Kindly advice us if you accept new purchase orders, I will forward our PO for urgent order.

Waiting for your response to send order. Reply to ( purchase_m.maths@aol.com)

Best regards.
Mark Maths
Company Address:
Emilxa Tram SRL Company Limited
P.O. Box 978
Road Town
Tortola
British Virgin Islands
Contact information:
Tel: +1 (284) 493 7235
Email: purchase_m.maths@aol.com
https://meridianbvi.com/contact-us/
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
