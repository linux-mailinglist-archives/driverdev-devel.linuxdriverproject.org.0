Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD3A22F61
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 10:54:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C99187410;
	Mon, 20 May 2019 08:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MGW1af1i6k6O; Mon, 20 May 2019 08:54:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2AD587368;
	Mon, 20 May 2019 08:54:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CEE451BF2EF
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:54:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CBB5781CBE
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:54:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZnXayaoRFgzg for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 08:54:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3BC0481B74
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:54:34 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94A5A204FD;
 Mon, 20 May 2019 08:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558342474;
 bh=FuGxZEbM7oawCwQGwg2EzuoBzEWp6BCjit9mc9pQiog=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CLzPaHN+K3lBQVjwdAbX1ZdNL7JPs4n3Jt8lfUV+HGnTAkxTYCXC+zfsBripKgWpx
 EBpoX3l5HN2J3LuZZ3/xcm9XeyR+mS5/G4Iq6MZDfVjDcgSiaTdPxHG/onefYfoJfC
 2OplTTq3/IjIgqqXGTmmXM3YZMkjJCJnG1yU7UqM=
Date: Mon, 20 May 2019 10:54:31 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: os_dep: os_intfs: fix warning
 Unneeded variable: "status". Return "_SUCCESS"
Message-ID: <20190520085431.GC19183@kroah.com>
References: <20190519165758.GA6375@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190519165758.GA6375@hari-Inspiron-1545>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Alexander Duyck <alexander.h.duyck@intel.com>, devel@driverdev.osuosl.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>, Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 19, 2019 at 10:27:58PM +0530, Hariprasad Kelam wrote:
> This patch fixes below warnings reported by coccicheck
> 
> drivers/staging/rtl8723bs/os_dep/os_intfs.c:228:6-12: Unneeded variable:
> "status". Return "_SUCCESS" on line 333
> drivers/staging/rtl8723bs/os_dep/os_intfs.c:607:4-7: Unneeded variable:
> "ret". Return "_SUCCESS" on line 669
> drivers/staging/rtl8723bs/os_dep/os_intfs.c:713:4-8: Unneeded variable:
> "ret8". Return "_SUCCESS" on line 743
> drivers/staging/rtl8723bs/os_dep/os_intfs.c:1379:5-8: Unneeded variable:
> "ret". Return "_SUCCESS" on line 1421
> drivers/staging/rtl8723bs/os_dep/os_intfs.c:1429:5-8: Unneeded variable:
> "ret". Return "_SUCCESS" on line 1451
> drivers/staging/rtl8723bs/os_dep/os_intfs.c:1300:5-8: Unneeded variable:
> "ret". Return "_SUCCESS" on line 1368
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 18 ++++++------------
>  1 file changed, 6 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> index 8a9d838..71dfac5 100644
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> @@ -225,7 +225,6 @@ static int netdev_close (struct net_device *pnetdev);
>  
>  static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
>  {
> -	uint status = _SUCCESS;
>  	struct registry_priv  *registry_par = &padapter->registrypriv;
>  
>  	registry_par->chip_version = (u8)rtw_chip_version;
> @@ -330,7 +329,7 @@ static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
>  	registry_par->qos_opt_enable = (u8)rtw_qos_opt_enable;
>  
>  	registry_par->hiq_filter = (u8)rtw_hiq_filter;
> -	return status;
> +	return _SUCCESS;
>  }

If this, or any of these other functions, can only return "success",
then why return anything at all?  These should be fixed up to either
properly return an error if one can happen, or be a void function and
fix up the caller function as well.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
