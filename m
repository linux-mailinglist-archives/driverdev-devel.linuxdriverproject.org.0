Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A89D0231A89
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 09:45:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B5C1588089;
	Wed, 29 Jul 2020 07:45:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EtKhcHJq3Jnn; Wed, 29 Jul 2020 07:45:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A58187F5A;
	Wed, 29 Jul 2020 07:45:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD5681BF589
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 07:45:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C9FAF85BC4
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 07:45:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O8g1sxPqpima for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 07:45:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BD4D9857D8
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 07:45:24 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 12C7C2076E;
 Wed, 29 Jul 2020 07:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596008724;
 bh=bw1/Arb/2b6w1pJkHqZYV38vMRfsiNEx/wIM0DDNp2U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NL9UVLc6ikjjZauImbC/h5+dC/RQA9IL7yQuVoxtTvH4x/YBoFGEhQKK5VmxM7sMu
 9eJ+ODtqI1/RzY5LVVXXTniX4saTwFwUZVG36tu/3c2Zfe+Lc+BZNFciNcigkrIM5u
 v84A5cr2x8N1USJqrmHB3Pms+hfjNRCENk7lXn7A=
Date: Wed, 29 Jul 2020 09:45:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ankit Baluni <b18007@students.iitmandi.ac.in>
Subject: Re: [PATCH v3] Staging : media : atomisp : fixed a brace coding
 sytle issue
Message-ID: <20200729074516.GA497024@kroah.com>
References: <20200728225935.28880-1-b18007@students.iitmandi.ac.in>
 <20200729073902.1704-1-b18007@students.iitmandi.ac.in>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200729073902.1704-1-b18007@students.iitmandi.ac.in>
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
Cc: devel@driverdev.osuosl.org, mchehab@kernel.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 andriy.shevchenko@linux.intel.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 29, 2020 at 01:09:02PM +0530, Ankit Baluni wrote:
> Removed braces for a 'if' condition as it contain only single line & 
> there is no need for braces for such case according to coding style
> rules.
> 
> Signed-off-by: Ankit Baluni <b18007@students.iitmandi.ac.in>
> 
> ---
> Changes in v2:
> 	-Added more description about the patch.
> 	-Added space before the symobol '<' in 'From'
> 	 and 'Signed-off-by' line.
> Changes in v3:
> 	-Removed space before ':' in subject line.

No you did not :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
