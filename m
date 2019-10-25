Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17765E41AE
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Oct 2019 04:41:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A52812324B;
	Fri, 25 Oct 2019 02:41:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7y7AmhCNJcI2; Fri, 25 Oct 2019 02:41:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6B197231A1;
	Fri, 25 Oct 2019 02:41:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A50551BF387
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 02:41:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A083E85CE1
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 02:41:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nBhpyVDPi9mI for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 02:41:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0E2F580CF7
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 02:41:18 +0000 (UTC)
Received: from localhost (unknown [38.98.37.137])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E50C2166E;
 Fri, 25 Oct 2019 02:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571971278;
 bh=9f/gp/YkGJW0WiL42yaYU2/xs6JBR+9HqT5XD0qf4GM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=la1oZ+kEXMwHHIWOE8BIezTxFprLu/NOrFgzMAlbcxbgWXdlX7tkeNbx9mdg314E7
 LfotSZGvlCsKJ4qFQEsMZFlsQ6Lop+Upz3FCdbL5AEQXeszWoZCrxZ5FY2garrl0PH
 khZ5DMabTIhlgIQtASbz5WBplrfl8yqRF7oyQOLc=
Date: Thu, 24 Oct 2019 22:35:51 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Chandra Annamaneni <chandra627@gmail.com>
Subject: Re: [PATCH 2/4] staging: KPC2000: kpc2000_spi.c: Fix style issues
 (misaligned brace)
Message-ID: <20191025023551.GA307080@kroah.com>
References: <20191018070948.22279-1-chandra627@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018070948.22279-1-chandra627@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, michael.scheiderer@fau.de,
 fabian.krueger@fau.de, linux-kernel@vger.kernel.org, simon@nikanor.nu,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 18, 2019 at 12:09:48AM -0700, Chandra Annamaneni wrote:
> Resolved: ERROR: else should follow close brace '}'
> 
> Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
> ---
> Previous versions of these patches were not split into different 
> patches, did not have different patch numbers and did not have the
> keyword staging. The previous version of this patch had the wrong 
> description and subject.

Ok, but I only see 1 patch here.

Can you resend the whole series properly, with a "v2" showing what
changed?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
