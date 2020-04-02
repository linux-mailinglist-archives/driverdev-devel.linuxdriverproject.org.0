Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C677619C5E8
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 17:30:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7C1DA26450;
	Thu,  2 Apr 2020 15:30:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HK5YrbCoBp3K; Thu,  2 Apr 2020 15:30:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7B648263CE;
	Thu,  2 Apr 2020 15:30:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 77B861BF592
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 15:30:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7080C88154
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 15:30:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K-Dwx6+CO3r0 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 15:30:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx.sdf.org (mx.sdf.org [205.166.94.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EAFE188145
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 15:30:35 +0000 (UTC)
Received: from sdf.org (IDENT:lkml@faeroes.freeshell.org [205.166.94.9])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 032FUYud026016
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Thu, 2 Apr 2020 15:30:35 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 032FUYVI019469;
 Thu, 2 Apr 2020 15:30:34 GMT
Date: Thu, 2 Apr 2020 15:30:34 +0000
From: George Spelvin <lkml@SDF.ORG>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v3] staging: wilc1000: Use crc7 in lib/ rather than a
 private copy
Message-ID: <20200402153034.GB2013@SDF.ORG>
References: <20200326152251.19094-1-ajay.kathat@microchip.com>
 <20200402082745.GG2001@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402082745.GG2001@kadam>
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
Cc: devel@driverdev.osuosl.org, lkml@sdf.org, Ajay.Kathat@microchip.com,
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 02, 2020 at 11:27:45AM +0300, Dan Carpenter wrote:
> I don't know how this patch made it through two versions without anyone
> complaining that this paragraph should be done as a separate patch...

I often fold comment (and spacing/formatting) patches in to a main
patch, when touching adjacent code anyway and it doesn't cause
distracting clutter.

This seemed like such a case, which is why I submitted it as one.
But it's a bit of style thing.

>> Cc: Adham Abozaeid <adham.abozaeid@microchip.com>
>> Cc: linux-wireless@vger.kernel.org
>> Reviewed-by: Ajay Singh <ajay.kathat@microchip.com>
>> Signed-off-by: George Spelvin <lkml@sdf.org>
>> ---
> 
> This should have you Signed-off-by.  The Reviewed-by is kind of assumed
> so you can drop that bit.  But everyone who touches a patch needs to
> add their signed off by.

Er... all he did was add "staging: " to the front of the title.

That's not a change to the code at all, and as trivial a change
to the commit message as adding "Reviewed-by:" to the end.
We don't need S-o-b for such things or we'd end up in a horrible
infinite recursion.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
