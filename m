Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5C2961BA0
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2024 03:53:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C97B240688;
	Wed, 28 Aug 2024 01:53:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D8pRDJOEEADv; Wed, 28 Aug 2024 01:53:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAE8F406A1
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAE8F406A1;
	Wed, 28 Aug 2024 01:53:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5BA181BF215
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2024 01:53:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 55DD44023A
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2024 01:53:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i9o6ufjdV_7w for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2024 01:53:38 +0000 (UTC)
X-Greylist: delayed 359 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 28 Aug 2024 01:53:38 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3B14F400FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B14F400FB
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.129.47.151;
 helo=hosted-4-client-dedicated-live-server5.cartrackweb.com;
 envelope-from=sales@cartrackweb.com; receiver=<UNKNOWN> 
Received: from hosted-4-client-dedicated-live-server5.cartrackweb.com
 (hosted-4-client-dedicated-live-server5.cartrackweb.com [103.129.47.151])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B14F400FB
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2024 01:53:38 +0000 (UTC)
From: =?ISO-8859-1?B?U2FsZXMgSW5j?=<sales@cartrackweb.com>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?R1BTIFRyYWNraW5nIHggZGV2ZWw=?=
Date: 27 Aug 2024 22:48:00 -0300
Message-ID: <20240827224759.8552B6DF7F69E7C1@cartrackweb.com>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1717221988.cartrackweb; d=cartrackweb.com; 
 b=nlwlZiJuTHuwuzX30X9rYlfxVu+ZmNV0pBvoNMxxWn/RUlXG9x4godok6BaFm9D8Tb7rtj01b3qY
 heRzBJAJBdXHwY/BKE6TFjp8uTwC8CvzWfENrUBO2XyeEg6l8iZ5/nSZkhVpJVqn1a2AIK2++Zmg
 vk5Tuz8sBdBibzvJNos=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1717221988.cartrackweb; d=cartrackweb.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=sales@cartrackweb.com; 
 bh=mUwhaQLMpKR8iLprkHFFsf6fvL0=;
 b=hknAH5e8iX1iz1gnR/f0JCZoA857S1Bi4luL0t7qhO0qirF+8jEGUeK+fJbx/pZhWM8hqWCXbYGV
 5sj8s6thR/8+3xHDABW9v6LB9BtWNMlaWVCI0ki2FgRAtb1jI5tAk355zd+QgXVyq0XOEJBbc4WH
 HKgcC9/PMRoL4ATIOP8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=cartrackweb.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=cartrackweb.com header.i=sales@cartrackweb.com
 header.a=rsa-sha1 header.s=1717221988.cartrackweb header.b=hknAH5e8
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
Reply-To: =?ISO-8859-1?B?U2FsZXMgSW5j?= <salesgps@cartrackgps.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good morning,

This is Paul Novak from Car Track GPS, hoping you are feeling very well today.

We offer cameras with AI and GPS trackers for locating vehicles and assets.
The camera can detect if the driver is tired, using a cell phone or smoking.

This can improve the efficiency of your fleet, while avoiding accidents and risks.

In addition, compact and economical 4G GPS equipment.
Also systems for home and business automation via IoT.
Control all your equipment, vehicles and office remotely through your phone.

You can listen to conversations remotely without being detected.
It applies to motorcycles, cars, trucks and people. As well as heavy machinery, generators, etc.
Our fuel control system does not interfere with the tank or the vehicle's electrical system.

It can also be offered as a business for other companies.
We also develop detection of incorrect driving behavior as well as engine fault detection.

We have a cloud platform option where they can upload their own GPS.
This promotion includes a dedicated server in NY, map licenses and updates. 
 
We also launched a new tracking platform and App to track phones.
It can be used in several countries without paying Roaming and is tracked without being detected.

We can adapt our solution to your needs.

Kind regards,
Paul Novak
Car Track GPS

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
