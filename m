Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C95C9FE61
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 11:22:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6C7187C5A;
	Wed, 28 Aug 2019 09:22:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qJ7GdA4Cx1R9; Wed, 28 Aug 2019 09:22:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6241587C0E;
	Wed, 28 Aug 2019 09:22:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 307B31BF383
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 09:22:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2A13E860FF
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 09:22:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id brqQ6TbIqpQb for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 09:22:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E0FEE859BA
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 09:22:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 377B02173E;
 Wed, 28 Aug 2019 09:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566984159;
 bh=HryJYf5g08YQjfvT68Ede1Nd4RLNa68zczGsa66UktA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OSYHZeREby00ePW9bDdBeQYwY+gDqs9Oz9kmWf8N8yaOhHQgAI/rdKXmGDWkHBU+G
 cWIYFHTKVNXD9yY/Awne0jwAO3vRaXnTd1FLmRryisDCYtNQOwl8E/hAq0O5eZ1xOc
 Ne8rxhaEuFQBbvDuE2TF/opB8l+ndhWG5/eIRmic=
Date: Wed, 28 Aug 2019 11:22:37 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hridya Valsaraju <hridya@google.com>
Subject: Re: [PATCH 1/4] binder: add a mount option to show global stats
Message-ID: <20190828092237.GA23192@kroah.com>
References: <20190827204152.114609-1-hridya@google.com>
 <20190827204152.114609-2-hridya@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827204152.114609-2-hridya@google.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 kernel-team@android.com, linux-kernel@vger.kernel.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 27, 2019 at 01:41:49PM -0700, Hridya Valsaraju wrote:
> Currently, all binder state and statistics live in debugfs.
> We need this information even when debugfs is not mounted.
> This patch adds the mount option 'stats' to enable a binderfs
> instance to have binder debug information present in the same.
> 'stats=global' will enable the global binder statistics. In
> the future, 'stats=local' will enable binder statistics local
> to the binderfs instance. The two modes 'global' and 'local'
> will be mutually exclusive. 'stats=global' option is only available
> for a binderfs instance mounted in the initial user namespace.
> An attempt to use the option to mount a binderfs instance in
> another user namespace will return an EPERM error.
> 
> Signed-off-by: Hridya Valsaraju <hridya@google.com>
> ---
>  drivers/android/binderfs.c | 47 ++++++++++++++++++++++++++++++++++++--
>  1 file changed, 45 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
> index cc2e71576396..d95d179aec58 100644
> --- a/drivers/android/binderfs.c
> +++ b/drivers/android/binderfs.c
> @@ -51,18 +51,27 @@ static DEFINE_IDA(binderfs_minors);
>  /**
>   * binderfs_mount_opts - mount options for binderfs
>   * @max: maximum number of allocatable binderfs binder devices
> + * @stats_mode: enable binder stats in binderfs.
>   */
>  struct binderfs_mount_opts {
>  	int max;
> +	int stats_mode;
>  };
>  
>  enum {
>  	Opt_max,
> +	Opt_stats_mode,
>  	Opt_err
>  };
>  
> +enum binderfs_stats_mode {
> +	STATS_NONE,
> +	STATS_GLOBAL,
> +};
> +
>  static const match_table_t tokens = {
>  	{ Opt_max, "max=%d" },
> +	{ Opt_stats_mode, "stats=%s" },
>  	{ Opt_err, NULL     }
>  };
>  
> @@ -290,8 +299,9 @@ static void binderfs_evict_inode(struct inode *inode)
>  static int binderfs_parse_mount_opts(char *data,
>  				     struct binderfs_mount_opts *opts)
>  {
> -	char *p;
> +	char *p, *stats;
>  	opts->max = BINDERFS_MAX_MINOR;
> +	opts->stats_mode = STATS_NONE;
>  
>  	while ((p = strsep(&data, ",")) != NULL) {
>  		substring_t args[MAX_OPT_ARGS];
> @@ -311,6 +321,24 @@ static int binderfs_parse_mount_opts(char *data,
>  
>  			opts->max = max_devices;
>  			break;
> +		case Opt_stats_mode:
> +			stats = match_strdup(&args[0]);
> +			if (!stats)
> +				return -ENOMEM;
> +
> +			if (strcmp(stats, "global") != 0) {
> +				kfree(stats);
> +				return -EINVAL;
> +			}
> +
> +			if (!capable(CAP_SYS_ADMIN)) {
> +				kfree(stats);
> +				return -EINVAL;

Can a non-CAP_SYS_ADMIN task even call this function?  Anyway, if it
can, put the check at the top of the case, and just return early before
doing any extra work like checking values or allocating memory.

> +			}
> +
> +			opts->stats_mode = STATS_GLOBAL;
> +			kfree(stats);
> +			break;
>  		default:
>  			pr_err("Invalid mount options\n");
>  			return -EINVAL;
> @@ -322,8 +350,21 @@ static int binderfs_parse_mount_opts(char *data,
>  
>  static int binderfs_remount(struct super_block *sb, int *flags, char *data)
>  {
> +	int prev_stats_mode, ret;
>  	struct binderfs_info *info = sb->s_fs_info;
> -	return binderfs_parse_mount_opts(data, &info->mount_opts);
> +
> +	prev_stats_mode = info->mount_opts.stats_mode;
> +	ret = binderfs_parse_mount_opts(data, &info->mount_opts);
> +	if (ret)
> +		return ret;
> +
> +	if (prev_stats_mode != info->mount_opts.stats_mode) {
> +		pr_info("Binderfs stats mode cannot be changed during a remount\n");

pr_err()?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
