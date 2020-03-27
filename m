Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CED519510F
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 07:28:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78A91895B0;
	Fri, 27 Mar 2020 06:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5PWlXHJvnhI8; Fri, 27 Mar 2020 06:28:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C749D893F5;
	Fri, 27 Mar 2020 06:28:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8DCEE1BF3EB
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:28:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8567987169
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:28:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mvHR2J3cVx9B for <devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 06:28:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E780C870F9
 for <devel@driverdev.osuosl.org>; Fri, 27 Mar 2020 06:28:13 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2727E20705;
 Fri, 27 Mar 2020 06:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585290493;
 bh=bRwgGEY2000N6QzlYVLDl5qvPjTeEzrZxRrzp+VEPRM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FnmbPozAtnbMcLw42ZKLPMUtrZG+J7t1QWVH+q97IvH38vjS6RGeH9BxBNoxZsJEg
 a2rn4bfDFegz3wKMakKSE894IsCIsjPkSETG6wfkphdPzoqdh59yM2zny7Ghr21NoN
 c5B0iM/mk6v1aURacglZOmLX8k0PBg2kXkt/Ak6A=
Date: Fri, 27 Mar 2020 07:28:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 5.5 12/28] staging: greybus: loopback_test: fix
 potential path truncation
Message-ID: <20200327062810.GD1601217@kroah.com>
References: <20200326232357.7516-1-sashal@kernel.org>
 <20200326232357.7516-12-sashal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326232357.7516-12-sashal@kernel.org>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 26, 2020 at 07:23:41PM -0400, Sasha Levin wrote:
> From: Johan Hovold <johan@kernel.org>
> 
> [ Upstream commit f16023834863932f95dfad13fac3fc47f77d2f29 ]
> 
> Newer GCC warns about a possible truncation of a generated sysfs path
> name as we're concatenating a directory path with a file name and
> placing the result in a buffer that is half the size of the maximum
> length of the directory path (which is user controlled).
> 
> loopback_test.c: In function 'open_poll_files':
> loopback_test.c:651:31: warning: '%s' directive output may be truncated writing up to 511 bytes into a region of size 255 [-Wformat-truncation=]
>   651 |   snprintf(buf, sizeof(buf), "%s%s", dev->sysfs_entry, "iteration_count");
>       |                               ^~
> loopback_test.c:651:3: note: 'snprintf' output between 16 and 527 bytes into a destination of size 255
>   651 |   snprintf(buf, sizeof(buf), "%s%s", dev->sysfs_entry, "iteration_count");
>       |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Fix this by making sure the buffer is large enough the concatenated
> strings.
> 
> Fixes: 6b0658f68786 ("greybus: tools: Add tools directory to greybus repo and add loopback")
> Fixes: 9250c0ee2626 ("greybus: Loopback_test: use poll instead of inotify")
> Signed-off-by: Johan Hovold <johan@kernel.org>
> Link: https://lore.kernel.org/r/20200312110151.22028-3-johan@kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  drivers/staging/greybus/tools/loopback_test.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> index ba6f905f26fad..5ce7d6fa086cc 100644
> --- a/drivers/staging/greybus/tools/loopback_test.c
> +++ b/drivers/staging/greybus/tools/loopback_test.c
> @@ -637,7 +637,7 @@ int find_loopback_devices(struct loopback_test *t)
>  static int open_poll_files(struct loopback_test *t)
>  {
>  	struct loopback_device *dev;
> -	char buf[MAX_STR_LEN];
> +	char buf[MAX_SYSFS_PATH + MAX_STR_LEN];
>  	char dummy;
>  	int fds_idx = 0;
>  	int i;
> -- 
> 2.20.1
> 

Already in all stable releases, so no need to add it again.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
