Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54187155729
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Feb 2020 12:51:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 07CF286505;
	Fri,  7 Feb 2020 11:51:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oMI3XTIiOHBn; Fri,  7 Feb 2020 11:51:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3BA3E864CD;
	Fri,  7 Feb 2020 11:51:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE9491BF3C1
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 11:50:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E8A6D864CD
 for <devel@linuxdriverproject.org>; Fri,  7 Feb 2020 11:50:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 04QDvPbRT_1j for <devel@linuxdriverproject.org>;
 Fri,  7 Feb 2020 11:50:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B28B1864C4
 for <devel@driverdev.osuosl.org>; Fri,  7 Feb 2020 11:50:57 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 56AC729482C
Subject: Re: [PATCH 0/4] Hantro VPU JPEG encoder fixes
To: Ezequiel Garcia <ezequiel@collabora.com>, devel@driverdev.osuosl.org
References: <20200127143009.15677-1-andrzej.p@collabora.com>
 <1d83a74c24269c7bcf6d6d8a789c88dbf7370dbb.camel@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <8a526fdb-cbfb-fe75-e24f-83f7c09a13a5@collabora.com>
Date: Fri, 7 Feb 2020 12:50:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1d83a74c24269c7bcf6d6d8a789c88dbf7370dbb.camel@collabora.com>
Content-Language: en-US
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kernel@collabora.com,
 Tomasz Figa <tfiga@chromium.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi All,

<snip>

> I've just tested RK3288, and this series is indeed fixing
> these issues. So for all patches:
> 
> Tested-by: Ezequiel Garcia <ezequiel@collabora.com>

A kind reminder.

The series fixes serious encoding quality problems in both rk3399 and rk3288,
so it seems it should be included. A review is needed, though, at least for
patches 2-4.

Thank you,

Andrzej
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
