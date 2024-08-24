Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADEE95DC27
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Aug 2024 08:07:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44E5981EBB;
	Sat, 24 Aug 2024 06:07:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rupMtHCZ6MWY; Sat, 24 Aug 2024 06:07:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5494781EC0
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5494781EC0;
	Sat, 24 Aug 2024 06:07:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FFC31BF349
 for <devel@linuxdriverproject.org>; Sat, 24 Aug 2024 06:07:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3EAB840359
 for <devel@linuxdriverproject.org>; Sat, 24 Aug 2024 06:07:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rDlOjzfag8ph for <devel@linuxdriverproject.org>;
 Sat, 24 Aug 2024 06:07:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=gregkh@linuxfoundation.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 10D9D40355
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10D9D40355
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10D9D40355
 for <devel@driverdev.osuosl.org>; Sat, 24 Aug 2024 06:07:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 88C1D6109E;
 Sat, 24 Aug 2024 06:07:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D31AFC32781;
 Sat, 24 Aug 2024 06:07:35 +0000 (UTC)
Date: Sat, 24 Aug 2024 08:07:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Simon Horman <simon@horms.net>
Subject: Re: [staging:staging-testing 36/53]
 drivers/staging/rtl8192e/rtllib_crypt_tkip.c:640:7: warning: variable 'iv16'
 set but not used
Message-ID: <2024082424-crescent-delta-7191@gregkh>
References: <202408232049.UJef268y-lkp@intel.com>
 <20240823171649.GZ2164@vergenet.net>
 <20240823172749.GA2164@vergenet.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823172749.GA2164@vergenet.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1724479656;
 bh=eHlrQulkBc/F/ibLxs2zEc0PFjIJ603YRZi4jUmM3Hg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nzABCM9hUHX3HqFG5NTwm0UAtGSNJ0q+k8hDPiMHEQ4fQFHV8I/YcdzsETXFdSvDG
 930In0ExU2leElkuLh/knJLwHymwrl1S6rWn4tLXMTOa9IGUiYz4t+OwZHYkIW6oeD
 u2Xa4cvoFkYDdlZ8bJSf7gua2A8ngGi+jObmf9TY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=nzABCM9h
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
Cc: devel@driverdev.osuosl.org, llvm@lists.linux.dev,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 23, 2024 at 06:27:49PM +0100, Simon Horman wrote:
> On Fri, Aug 23, 2024 at 06:16:49PM +0100, Simon Horman wrote:
> > On Fri, Aug 23, 2024 at 08:35:15PM +0800, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
> > > head:   5315266844ea3b0b8b6be9842d5901e439fa838a
> > > commit: 5f1a6826ea4900f8540d5eeb29f97796860f2d08 [36/53] staging: rtl8192e: remove set but otherwise unused local variable iv32
> > > config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20240823/202408232049.UJef268y-lkp@intel.com/config)
> > > compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
> > > reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240823/202408232049.UJef268y-lkp@intel.com/reproduce)
> > > 
> > > If you fix the issue in a separate patch/commit (i.e. not just a new version of
> > > the same patch/commit), kindly add following tags
> > > | Reported-by: kernel test robot <lkp@intel.com>
> > > | Closes: https://lore.kernel.org/oe-kbuild-all/202408232049.UJef268y-lkp@intel.com/
> > > 
> > > All warnings (new ones prefixed by >>):
> > > 
> > > >> drivers/staging/rtl8192e/rtllib_crypt_tkip.c:640:7: warning: variable 'iv16' set but not used [-Wunused-but-set-variable]
> > >      640 |                 u16 iv16 = tkey->tx_iv16;
> > >          |                     ^
> > >    1 warning generated.
> > 
> > Sorry about this.
> > 
> > It seems that my patch, cited above, which removed a set but otherwise
> > unused variable results in iv16 being set but otherwise unused.
> > 
> > I'll prepare a follow-up patch to address this.
> 
> Patch is here:
> 
> - [PATCH] staging: rtl8192e: remove set but otherwise unused local variable iv16
>   https://lore.kernel.org/linux-staging/20240823-rtl8192e-iv16-v1-1-000702673065@kernel.org/T/#u

Now applied, thanks for the quick response!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
