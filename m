Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A368C5B9861
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Sep 2022 11:58:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 109DF4102D;
	Thu, 15 Sep 2022 09:58:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 109DF4102D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dRYtkJthFhm3; Thu, 15 Sep 2022 09:58:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D166F40133;
	Thu, 15 Sep 2022 09:58:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D166F40133
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE8A11BF3C3
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 15 Sep 2022 09:58:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89CCF4102D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 15 Sep 2022 09:58:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89CCF4102D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AaDpJlQ3F-1m
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 15 Sep 2022 09:58:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E845340133
Received: from puremedia.kr (unknown [112.217.191.162])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E845340133
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 15 Sep 2022 09:58:33 +0000 (UTC)
Received: from [212.193.29.43] (unknown [212.193.29.43])
 by puremedia.kr (Postfix) with ESMTPSA id 1E95229493DA;
 Thu, 15 Sep 2022 13:32:32 +0900 (KST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Final Notice +
To: Recipients <help@puremedia.kr>
From: "info" <help@puremedia.kr>
Date: Wed, 14 Sep 2022 21:32:31 -0700
Message-Id: <20220915095834.89CCF4102D@smtp2.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=puremedia.kr; s=default; t=1663216354;
 bh=2Rv2JnaWz+Rheki0Nd0sIyI2MTd7VYd8+0Ah19uULBA=;
 h=Subject:To:From:Date:Reply-To:From;
 b=g10XfDKxaMr8XynxTs625ZdLft+XCs2PBHLajIHpIRu2UiBkU65dgdePKXkzVBuSf
 Z0jDCutWUZgZS8coiDzOLAs7ltk7MWu+1l8QdTfHuFS0tw6cHnFFWT3W5eCn8T7N6u
 3IP1DCNx07SY2PLwHOyGP86U44t6lfya2zNElNEHbhIw1xs9J2acL5/dH+zfgaKHvQ
 rkFe0I926cs723KDUqHraexXBLaU6TrQS1zl2iixZencjAfCU7XogaIMRJJP0hvFQZ
 tfRyQVJ04W6hSFVjPlLBc+J4SF2MNAZqt/btFE3bI7ExfLUfpx9ll0FJyLsSTWDrkR
 jGpGFPMA1yh2Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=puremedia.kr header.i=@puremedia.kr
 header.a=rsa-sha256 header.s=default header.b=g10XfDKx
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
Reply-To: simpson1011@zohomail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We are reaching you once again as regards the estate of Late George, you were made one of the beneficiaries of his estate. Do get back to me at your earliest convenience. Trustees
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
