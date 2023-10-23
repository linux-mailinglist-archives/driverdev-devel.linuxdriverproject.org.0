Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 031DE7D3627
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Oct 2023 14:13:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45FF7410D8;
	Mon, 23 Oct 2023 12:13:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45FF7410D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dAh2amSilebS; Mon, 23 Oct 2023 12:13:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9EEE84096C;
	Mon, 23 Oct 2023 12:13:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EEE84096C
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 62CC51BF409
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Oct 2023 12:13:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 39D9E4013F
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Oct 2023 12:13:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39D9E4013F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0qESOcLkTEul
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Oct 2023 12:13:24 +0000 (UTC)
X-Greylist: delayed 605 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 23 Oct 2023 12:13:23 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CA51400F2
Received: from h-store.asia (h-store.asia [106.75.66.107])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3CA51400F2
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Oct 2023 12:13:21 +0000 (UTC)
From: "Abu Dhabi National Oil" <sales@h-store.asia>
To: driverdev-devel@linuxdriverproject.org
Subject: Expression of Interest
Date: 23 Oct 2023 14:03:07 +0200
Message-ID: <20231023140306.7035AE00803D2A3D@h-store.asia>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default;
 d=h-store.asia; 
 b=kZewIR+jW7u5uWXkTy1udl4EKkw3dFxIoODIZr9gm746dA8SImxdIe/OHD5LaI6l/XjPOoN6CkD1
 tWZ7qCbRCv3MbXYVF36OTjS0SSl+Tv7Sg5WvOVGBhWZHy1ccmLcpU+zYgf79cDfeIRUZgFnbLgZK
 4ZsiPfcrbXk7Yo2SMdM=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=default; d=h-store.asia; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=sales@h-store.asia; 
 bh=ApB/iWryFdq9VvS/l+VKXqvwOS0=;
 b=rNWlPTjYs1szYoi39IpxQHeirb+ZEi208uSWVfRy1B04QC22XPHUTL2oh//x35oBc3Wc2UlDlUy2
 eIelMfE5jTP0DlbTdgjdEzO8QkjDWJYl4UcVPlYgueySWXidYA7P+52Ds10CmUvu6CxGDeKfM30a
 JincwDrJ+r1VwubraKc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=h-store.asia header.i=sales@h-store.asia
 header.a=rsa-sha1 header.s=default header.b=rNWlPTjY
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
Reply-To: reg3@adnoconline-eoi.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day Sir/Madam,

Salamalaikum 

ADNOC is inviting your esteemed company for vendor registration 
and partners for the Abu Dhabi National Oil Company (ADNOC) 
Projects 2023/2024.

These projects are open for all companies around the world, if 
you have intention to participate in the process, please confirm 
your interest by asking for  Vendor Questionnaire and EOI.

Application is open for Vendors, service providers, suppliers, 
servicing companies and logistics. 

Kind Regards,
Haneef Badrudeen
Project Manager
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
