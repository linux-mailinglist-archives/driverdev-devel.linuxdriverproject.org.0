Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8018A23C743
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 09:57:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7115F880C3;
	Wed,  5 Aug 2020 07:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rL5UuW3QybeI; Wed,  5 Aug 2020 07:57:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E2B2C87BF5;
	Wed,  5 Aug 2020 07:57:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE5391BF38B
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 07:56:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D04FE2042D
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 07:56:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XlBy0Ul8WApN for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 07:56:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6F1D32035D
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 07:56:59 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FA4321744;
 Wed,  5 Aug 2020 07:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596614219;
 bh=w7tzLksrCv4ALQStcKSfize2/X8xdy7tmJu6ujP5RS4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TQ3t3d/V6OFAF4jjvStcD4uckOm0QSQoQ0ILHB90Xk0i2BlpAETwThQixlfZIKjpG
 dPmkatHTgnaOnRkwxjpJjemVuyScuS5NKc4zmucMOXgjQPb3jOvZRO2rBLJWk+kGYR
 XH/OAyMyv883UUdN7M5GPzQ8WCaJHVjxVtOp38fM=
Date: Wed, 5 Aug 2020 09:57:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dongdong Yang <contribute.kernel@gmail.com>
Subject: Re: [PATCH v5] sched: Provide USF for the portable equipment.
Message-ID: <20200805075717.GB635696@kroah.com>
References: <cover.1596612536.git.yangdongdong@xiaomi.com>
 <3bbd9a487176a05588e33ff660d4e58efa1fdb10.1596612536.git.yangdongdong@xiaomi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3bbd9a487176a05588e33ff660d4e58efa1fdb10.1596612536.git.yangdongdong@xiaomi.com>
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
Cc: juri.lelli@redhat.com, devel@driverdev.osuosl.org,
 vincent.guittot@linaro.org, linux-pm@vger.kernel.org, peterz@infradead.org,
 viresh.kumar@linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, rocking@linux.alibaba.com, bsegall@google.com,
 mingo@redhat.com, yangdongdong@xiaomi.com, mgorman@suse.de,
 yanziily@xiaomi.com, dietmar.eggemann@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 05, 2020 at 03:36:21PM +0800, Dongdong Yang wrote:
> +#define usf_attr_rw(_name)						\
> +static struct device_attribute _name =					\
> +__ATTR_RW(_name)

I also asked you to use DEVICE_ATTR_RW() and not use "raw" kobjects.

Why you ignore code review is odd...

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
