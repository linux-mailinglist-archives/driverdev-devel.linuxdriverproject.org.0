Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E389618B959
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 15:27:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A265222EC1;
	Thu, 19 Mar 2020 14:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XLiRN5QHX4rW; Thu, 19 Mar 2020 14:27:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 244FD204EA;
	Thu, 19 Mar 2020 14:27:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7ED671BF3EE
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 14:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6E7F087D93
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 14:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VWG7B6y5cQpL for <devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 14:27:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B781787D6E
 for <devel@driverdev.osuosl.org>; Thu, 19 Mar 2020 14:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=kvtD+UmelXQ6+UeUUM3FkPq0h6Mly9+Z00iXw2LtUKA=; b=cnqGC1jrVvb2bDxWC1xUmvT0DQ
 VJ+Ot2RjADkFQOaM4+tLx4Wqohr2gAGkxdJ+cspwGG9tSz+sYOzVSvCwbJpIpqMWpGMM/dH5ybeMq
 yVTmflvFV1QhQjV+otAvqkAiLrRK5W3EjI/aQOpwv/9WSpM2EEqy5t2/6SKhry+JWlhlo8Y3vrCKV
 7fBvOSpkRCLbqSUqKjPHF6EyStj/gce4n0+Vri8inq/mxSHyC36ECruJ7mszhF0k40g2xw/9/qoVm
 fKcaKAHR+ecmfBlohZOn4AXC2J5+WXLvsbTvL7S+0xHg9XjzY1HwuHCOlIoZxmQiNSXJgu10+Pooz
 WUjqm8bw==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jEw9H-0007es-6J; Thu, 19 Mar 2020 14:27:51 +0000
Date: Thu, 19 Mar 2020 07:27:51 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Aravind Ceyardass <aravind.pub@gmail.com>
Subject: Re: [PATCH] staging: exfat: Fix checkpatch.pl camelcase issues
Message-ID: <20200319142751.GK22433@bombadil.infradead.org>
References: <20200319140647.3926-1-aravind.pub@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319140647.3926-1-aravind.pub@gmail.com>
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
Cc: linux-fsdevel@vger.kernel.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 19, 2020 at 10:06:47AM -0400, Aravind Ceyardass wrote:
> Fix ffsCamelCase function names and mixed case enums

This driver is now gone from staging in -next; please review the code
in fs/exfat instead.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
