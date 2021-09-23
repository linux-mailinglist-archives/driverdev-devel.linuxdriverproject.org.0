Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11ED74159C0
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Sep 2021 10:05:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D20141600;
	Thu, 23 Sep 2021 08:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kq6k1tUpyRGw; Thu, 23 Sep 2021 08:05:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86F48404FE;
	Thu, 23 Sep 2021 08:05:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C19E31BF325
 for <devel@linuxdriverproject.org>; Thu, 23 Sep 2021 08:05:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD3D9614D7
 for <devel@linuxdriverproject.org>; Thu, 23 Sep 2021 08:05:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2AG42Bsx2dCg for <devel@linuxdriverproject.org>;
 Thu, 23 Sep 2021 08:05:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5B8B2608A2
 for <devel@driverdev.osuosl.org>; Thu, 23 Sep 2021 08:05:03 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 753936109E;
 Thu, 23 Sep 2021 08:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1632384303;
 bh=+MUcDaRauyoZr0zXBCwHzF9N6GWx8r0/z+wnSzjd1nY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gYNos9wn7K206ij9GbNi5JAKjJ9HsM9x4OcuLbORT3a4AQicvliAxs+/LJGYc8t7s
 3hcnS7Bekw6jFIpI3CUnujf0hTzy91pHcqxlu6A4c2KjVDo+SU1/sJl8cN8YspLbI2
 Ri22mCDUnBR81Jdnnagi6zkGi7KJtC/829dpbWMI=
Date: Thu, 23 Sep 2021 10:05:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Cheng Chao <cs.os.kernel@gmail.com>
Subject: Re: [PATCH] [PATCH 4.9] staging: android: ion: fix page is NULL
Message-ID: <YUw1LFGXYUcZIlJZ@kroah.com>
References: <20210911112115.47202-1-cs.os.kernel@gmail.com>
 <YTyY6ZALBhCm47T6@kroah.com>
 <CA+1SViD_my-MPyqXcQ2T=zxF8014u6N-n2Fqcbi9BJPfo3KaTA@mail.gmail.com>
 <CA+1SViA9PN_uoykBtjukYGd-09=peWFCB147iSNnUMwtoT7b0w@mail.gmail.com>
 <CA+1SViDzyAsbQu7S+qKgLR7vS3wmA+MbQWZhV2rzdbLiFnxvsg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+1SViDzyAsbQu7S+qKgLR7vS3wmA+MbQWZhV2rzdbLiFnxvsg@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, arve@android.com, stable@vger.kernel.org,
 riandrews@android.com, labbott@redhat.com,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 22, 2021 at 08:17:15PM +0800, Cheng Chao wrote:
> I notice that v4.9.283 has released, but this patch is not merged.
> It's exactly a bug.

Can you please resend this and include all of the information in this
thread in the changelog comment explaining why this is only needed for
this one branch?  Trying to piece it all together on my own doesn't work
well :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
