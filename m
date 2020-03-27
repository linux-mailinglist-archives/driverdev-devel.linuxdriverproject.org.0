Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F8E195113
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 07:28:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 45C0F2635F;
	Fri, 27 Mar 2020 06:28:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8C3+PcNGOYIZ; Fri, 27 Mar 2020 06:28:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1CE6C26295;
	Fri, 27 Mar 2020 06:28:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B21C81BF3EB
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:28:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AE93D20427
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:28:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1-VkyRpOaApp for <devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 06:28:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A8A3420422
 for <devel@driverdev.osuosl.org>; Fri, 27 Mar 2020 06:28:36 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC1C320705;
 Fri, 27 Mar 2020 06:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585290516;
 bh=ImlDJzKKwt9tiiPdyAKPvZO37GYRF9w32PEaS7HDj9w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QeSQzXuxEd20XZreGGkX7wR05nP3p0WtzZc+CIpPmaHTJf5RSDMnyjqf40dYOwJTX
 ucHB5hI4u4ExOd1dhdZu6Soi4PPiTxt+6buk2nu3KgVE6GvszzN1IQMhFpVrPpf5Zb
 aNWFlg9POPLNQxZLKikbr5kwjkDvauLCrHBFeSiY=
Date: Fri, 27 Mar 2020 07:28:33 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 5.5 13/28] staging: greybus: loopback_test: fix
 potential path truncations
Message-ID: <20200327062833.GE1601217@kroah.com>
References: <20200326232357.7516-1-sashal@kernel.org>
 <20200326232357.7516-13-sashal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326232357.7516-13-sashal@kernel.org>
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

On Thu, Mar 26, 2020 at 07:23:42PM -0400, Sasha Levin wrote:
> From: Johan Hovold <johan@kernel.org>
> 
> [ Upstream commit ae62cf5eb2792d9a818c2d93728ed92119357017 ]
> 
> Newer GCC warns about possible truncations of two generated path names as
> we're concatenating the configurable sysfs and debugfs path prefixes
> with a filename and placing the results in buffers of the same size as
> the maximum length of the prefixes.
> 
> 	snprintf(d->name, MAX_STR_LEN, "gb_loopback%u", dev_id);
> 
> 	snprintf(d->sysfs_entry, MAX_SYSFS_PATH, "%s%s/",
> 		 t->sysfs_prefix, d->name);
> 
> 	snprintf(d->debugfs_entry, MAX_SYSFS_PATH, "%sraw_latency_%s",
> 		 t->debugfs_prefix, d->name);
> 
> Fix this by separating the maximum path length from the maximum prefix
> length and reducing the latter enough to fit the generated strings.
> 
> Note that we also need to reduce the device-name buffer size as GCC
> isn't smart enough to figure out that we ever only used MAX_STR_LEN
> bytes of it.
> 
> Fixes: 6b0658f68786 ("greybus: tools: Add tools directory to greybus repo and add loopback")
> Signed-off-by: Johan Hovold <johan@kernel.org>
> Link: https://lore.kernel.org/r/20200312110151.22028-4-johan@kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  drivers/staging/greybus/tools/loopback_test.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> index 5ce7d6fa086cc..3ee9109c38f60 100644
> --- a/drivers/staging/greybus/tools/loopback_test.c
> +++ b/drivers/staging/greybus/tools/loopback_test.c
> @@ -19,6 +19,7 @@
>  #include <signal.h>
>  
>  #define MAX_NUM_DEVICES 10
> +#define MAX_SYSFS_PREFIX 0x80
>  #define MAX_SYSFS_PATH	0x200
>  #define CSV_MAX_LINE	0x1000
>  #define SYSFS_MAX_INT	0x20
> @@ -67,7 +68,7 @@ struct loopback_results {
>  };
>  
>  struct loopback_device {
> -	char name[MAX_SYSFS_PATH];
> +	char name[MAX_STR_LEN];
>  	char sysfs_entry[MAX_SYSFS_PATH];
>  	char debugfs_entry[MAX_SYSFS_PATH];
>  	struct loopback_results results;
> @@ -93,8 +94,8 @@ struct loopback_test {
>  	int stop_all;
>  	int poll_count;
>  	char test_name[MAX_STR_LEN];
> -	char sysfs_prefix[MAX_SYSFS_PATH];
> -	char debugfs_prefix[MAX_SYSFS_PATH];
> +	char sysfs_prefix[MAX_SYSFS_PREFIX];
> +	char debugfs_prefix[MAX_SYSFS_PREFIX];
>  	struct timespec poll_timeout;
>  	struct loopback_device devices[MAX_NUM_DEVICES];
>  	struct loopback_results aggregate_results;
> @@ -907,10 +908,10 @@ int main(int argc, char *argv[])
>  			t.iteration_max = atoi(optarg);
>  			break;
>  		case 'S':
> -			snprintf(t.sysfs_prefix, MAX_SYSFS_PATH, "%s", optarg);
> +			snprintf(t.sysfs_prefix, MAX_SYSFS_PREFIX, "%s", optarg);
>  			break;
>  		case 'D':
> -			snprintf(t.debugfs_prefix, MAX_SYSFS_PATH, "%s", optarg);
> +			snprintf(t.debugfs_prefix, MAX_SYSFS_PREFIX, "%s", optarg);
>  			break;
>  		case 'm':
>  			t.mask = atol(optarg);
> @@ -961,10 +962,10 @@ int main(int argc, char *argv[])
>  	}
>  
>  	if (!strcmp(t.sysfs_prefix, ""))
> -		snprintf(t.sysfs_prefix, MAX_SYSFS_PATH, "%s", sysfs_prefix);
> +		snprintf(t.sysfs_prefix, MAX_SYSFS_PREFIX, "%s", sysfs_prefix);
>  
>  	if (!strcmp(t.debugfs_prefix, ""))
> -		snprintf(t.debugfs_prefix, MAX_SYSFS_PATH, "%s", debugfs_prefix);
> +		snprintf(t.debugfs_prefix, MAX_SYSFS_PREFIX, "%s", debugfs_prefix);
>  
>  	ret = find_loopback_devices(&t);
>  	if (ret)
> -- 
> 2.20.1

ALso already in all trees, please don't try to add it again.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
