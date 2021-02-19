Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB6E31F5AF
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 09:11:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BDA18700D;
	Fri, 19 Feb 2021 08:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ztUwDTXt+dD3; Fri, 19 Feb 2021 08:11:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2647986CCC;
	Fri, 19 Feb 2021 08:11:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 48EDD1BF318
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 08:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 42EB386CCC
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 08:11:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RW6AsFRe1PzT for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 08:11:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 90D5486FFB
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 08:11:42 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 70CF264EBD;
 Fri, 19 Feb 2021 08:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613722302;
 bh=EwTC9tC7yHKIbAicSsPxDq3xGvNVTspmTrJcExiOpVs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CWW1QIfS/Ebz56dRe4M5R1jmpuGnSj75KXXk4Cehdx2kmxYtDfTKrnSIW3LZ0ZYjH
 V05uYp0SjJO32hJViLlYWzxgupMAIOXuISKRis892OcVwDJe119c7VaqLYPmYBLnRy
 zx7rrh7kriouzpBrdf/v9KGI7yRDZPOmnR/snJBw=
Date: Fri, 19 Feb 2021 09:11:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alaa Emad <alaaemadhossney.ae@gmail.com>
Subject: Re: [PATCH v2] staging: hikey9xx: fix styling issues
Message-ID: <YC9yu31kKb+DROMH@kroah.com>
References: <20210216124255.9353-1-alaaemadhossney.ae@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216124255.9353-1-alaaemadhossney.ae@gmail.com>
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
Cc: mchehab+huawei@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 16, 2021 at 02:42:55PM +0200, Alaa Emad wrote:
> In hi6421-spmi-pmic.c, there are some warnings and Check:
> 
> "WARNING: please, no space before tabs" in lines 51,52,53 and 69.
> "CHECK: Alignment should match open parenthesis" in lines 180 and 238.
> 
> Signed-off-by: Alaa Emad <alaaemadhossney.ae@gmail.com>

That is doing 2 different things in the same patch, please make this a
patch series and do only one type of logical thing per patch and resend
them.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
