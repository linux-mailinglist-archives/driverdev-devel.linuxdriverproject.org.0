Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F899C22BB
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Sep 2019 16:08:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3F8A86542;
	Mon, 30 Sep 2019 14:08:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cREs23Z6cWUw; Mon, 30 Sep 2019 14:08:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D13B186447;
	Mon, 30 Sep 2019 14:08:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E256B1BF4E3
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 14:08:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DA3C98818B
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 14:08:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C6S1ZWykpOLW for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 14:08:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 297298817F
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 14:08:19 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8014E20842;
 Mon, 30 Sep 2019 14:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569852499;
 bh=/FN2WQ9yzMV8JVSSKNjmVUodL+U57Yr79DhmFiMtLXE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x498d0ztV1PSGakfabzcFv5iQVtrVtv1i2BNWuF3s9XYZWaqstVm9Fv799vLB+iKT
 Pr4XV9Nvg9o2hPIfwOTbL+SmF74EhbPNgPPUCx2Shn0p6FmH8430+sCxmv0447hcLQ
 uJORmsSWEebFukSlO+7zMWPNFF1mwfrc1Ux6Imzs=
Date: Sun, 29 Sep 2019 16:58:30 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jesse Barton <jessebarton95@gmail.com>
Subject: Re: [PATCH 2/3] Staging: exfat: exfat_super.c: fixed multiple coding
 style issues with camelcase and parentheses
Message-ID: <20190929145830.GB2017443@kroah.com>
References: <20190929145229.38561-1-jessebarton95@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190929145229.38561-1-jessebarton95@gmail.com>
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 29, 2019 at 09:52:29AM -0500, Jesse Barton wrote:
> Changed Function Names:
> ffsGetVolInfo -> ffs_get_vol_info
> ffsLookupFile -> ffs_lookup_file
> ffsCreateFile -> ffs_create_file
> ffsReadFile -> ffs_read_file
> ffsWriteFile -> ffs_write_file
> ffsTruncateFile -> ffs_truncate_file
> ffsRemoveFile -> ffs_remove_file
> ffsMoveFile -> ffs_move_file
> ffsSetAttr -> ffs_set_attr
> ffsReadStat -> ffs_read_stat
> ffsWriteStat -> ffs_write_stat
> ffsMapCluster -> ffs_map_cluster
> 
> Removed BUG_ON() and added WARN_ON().
> Removed unnecessary parentheses:
> *(dir_entry->Name) - > *dir_entry->Name
> 
> Switched to lowercase o in these enums
> Opt_uid
> Opt_gid
> Opt_umask
> Opt_dmask
> Opt_fmask
> Opt_allow_utime
> Opt_codepage
> Opt_charset
> Opt_namecase
> Opt_debug
> Opt_err_cont
> Opt_err_panic
> Opt_err_ro
> Opt_utf8_hack
> Opt_err


Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
