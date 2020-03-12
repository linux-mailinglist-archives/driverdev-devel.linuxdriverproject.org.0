Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76380182720
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 03:49:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C49F89288;
	Thu, 12 Mar 2020 02:49:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D2uyurR-VjQT; Thu, 12 Mar 2020 02:49:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 768DF8852D;
	Thu, 12 Mar 2020 02:49:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 760971BF286
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 02:49:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7300988A90
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 02:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pBnRvo6IugAl for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 02:49:45 +0000 (UTC)
X-Greylist: delayed 00:08:08 by SQLgrey-1.7.6
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5573188A88
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 02:49:45 +0000 (UTC)
Received: from [10.137.112.111] (unknown [131.107.147.111])
 by linux.microsoft.com (Postfix) with ESMTPSA id 8167120B9C02;
 Wed, 11 Mar 2020 19:41:36 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 8167120B9C02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1583980896;
 bh=FPn0J0a+i5WpPQn+wWi5l3mA8piuchfQOex4GqLMil0=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=Lq9bjLEBp7SL0Z6FdOGkbsBEfiXIiOB12effq3ESopNg/WxdNEjjthlzf7xMDmeAr
 ksJOTlMvOTT49LGJ9z22mYxrAW2tGwOg59w69Vo8YhWOaOeJYfGmbJfkDVDbnqwmi4
 EyWcjHr0Sf3O2tCS609q9IHQZFhVi2bv+KVqVI9E=
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
To: Shreeya Patel <shreeya.patel23498@gmail.com>, gregkh@linuxfoundation.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, sbrivio@redhat.com,
 daniel.baluta@gmail.com, hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
References: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
From: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Message-ID: <61a6c3d7-6592-b57b-6466-995309302cc2@linux.microsoft.com>
Date: Wed, 11 Mar 2020 19:42:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 3/11/2020 6:58 AM, Shreeya Patel wrote:

> Remove unnecessary if and else conditions since both are leading to the
> initialization of "phtpriv->ampdu_enable" with the same value.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>

Stating this based on the patch descriptions I have seen.
Others, please advise\correct me if I am wrong.

Patch description should state the problem first[1] and then describe 
how that is fixed in the given patch.

For example:

In the function rtw_update_ht_cap(), phtpriv->ampdu_enable is set to the 
same value in both if and else statements.

This patch removes this unnecessary if-else statement.


[1] Documentation\process\submitting-patches.rst
        2) Describe your changes

Thanks,
  -lakshmi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
