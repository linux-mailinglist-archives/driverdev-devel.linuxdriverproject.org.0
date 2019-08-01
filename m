Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 941D47E04A
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Aug 2019 18:35:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9570484EB0;
	Thu,  1 Aug 2019 16:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mMzYk+WojhzS; Thu,  1 Aug 2019 16:35:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 58D2F84AF1;
	Thu,  1 Aug 2019 16:35:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47D461BF39C
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 16:35:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4549222851
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 16:35:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 68+FyBFdwExK for <devel@linuxdriverproject.org>;
 Thu,  1 Aug 2019 16:35:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id D73FD22850
 for <devel@driverdev.osuosl.org>; Thu,  1 Aug 2019 16:35:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3BA1C2087E;
 Thu,  1 Aug 2019 16:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564677327;
 bh=e6sXZVWhcL30bK9Q1nGDuXTZOwe9jZ7GI+MDFBv4ruo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dslqnasiCE1otIWwNnZZh2ArOo2J+A1A5EfOQlonQRn8XX1GGjqWV6AAfNKxwQ8/V
 oHZbXO0dwgOml3c4fLlPniRyUz2/ieweVoXhN6gtJ5na46wAOfg+ufjd3zAnD4qea5
 837F05FXSYTyZvxmfh22hJrTeIlcmGHis2HZpoxc=
Date: Thu, 1 Aug 2019 18:35:25 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [Patch v2 01/10] staging: rtl8723bs: os_dep: Remove function
 _rtw_regdomain_select
Message-ID: <20190801163525.GB8360@kroah.com>
References: <20190731181158.GA9051@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731181158.GA9051@hari-Inspiron-1545>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 31, 2019 at 11:41:58PM +0530, Hariprasad Kelam wrote:
> This function simply returns &rtw_regdom_rd . So replace this function
> with actual code
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
> v2 - Add patch number

I only received patches 1-6 and 10.  Where did the others go?

And they were not properly "threaded", please use a tool like 'git
send-email' to have that work correctly.

Please fix up and resend them all.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
