Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 793578527D
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 19:57:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 931F0228BA;
	Wed,  7 Aug 2019 17:57:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ydJQkgX7cMWY; Wed,  7 Aug 2019 17:57:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4403322889;
	Wed,  7 Aug 2019 17:57:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C92EC1BF366
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 17:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C5C8B88303
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 17:57:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id guC7lboVFWxN for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 17:57:09 +0000 (UTC)
X-Greylist: delayed 00:07:00 by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4DA2282462
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 17:57:09 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id b3so41954061plr.4
 for <devel@driverdev.osuosl.org>; Wed, 07 Aug 2019 10:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5KYdXKYr3bi4ww2mKAeTRpDv73zJSo+1vXG/G3ODqB4=;
 b=PPvkKFCSYn8yjBmUNgneoKHyWptFiSw9Fscm78H29QqTnREErCk77l0nShOcTavsES
 iKEIl2StD6GseDdEkWxKNcVFzFKTYKdAKWSuBUnDcVZtiflSRJxvserT1G6lumK4gWcp
 xmzz0wozXfCe44vN4IS794SMn+U9szr4wB8aLe6PDERwXplNVD/mXKvbM1uf6cAdW+dJ
 Dbygcb6cfnRV+JV+lsgtJjoiha2E2LU5k7SGnznEee6LkRW6Sae7nMRtgxi+jMa2p52P
 nPlv76ct6GQjlA34j/SL/Rrda963I3vPp38U+wjxG2Z6FDTmQMwZNAxm/j2wGrki4cZB
 Zoig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5KYdXKYr3bi4ww2mKAeTRpDv73zJSo+1vXG/G3ODqB4=;
 b=Q9LSPBfQEBPhnl1xO5tczvlaG7JyxvR8E1zwkSge9A2ZjRh1ZL51P4r1Ys+b8CKR+/
 Uz8SmqMPTgtAOPbL96nSd5OoJ703YS0D9hyOJSw+qiZo9SBukpaYZhljXvb4rTehfUsy
 pzB0qbBriLY1e5boPgQkxs9IsbHM2AnqqtCJ20YdbHh99LC6k46QQQg+UzLw6K7BdbHl
 Rj+kY+hK5s/Xzzav9+ntFzgV/PnFFHdJ33I+tS6o3YvvU7EQ4p/H0MshArniJAEXpGvV
 CDOrEpNausixpMGp1haZiTWHWEeqcvpsyezblD+dYHvwoVxg6YN9eUk7t8KKAnpVMWov
 0K9w==
X-Gm-Message-State: APjAAAXR+/7tzuru3AMtexy/dXzAaxh6YMcGIPWvmp0bh4p23dY/7E9K
 40hUAO6eZVjKnXPeHN+bVe8yhw==
X-Google-Smtp-Source: APXvYqyBd1In7OO0v6ShLx+XwB5zNo+xJhWaxJDjYvfWQ72W167HxcctNcW92Y5dW5kT7biDDCGWxA==
X-Received: by 2002:a17:90a:23ce:: with SMTP id
 g72mr1044079pje.77.1565200209101; 
 Wed, 07 Aug 2019 10:50:09 -0700 (PDT)
Received: from brauner.io (c-67-180-61-213.hsd1.ca.comcast.net.
 [67.180.61.213])
 by smtp.gmail.com with ESMTPSA id a6sm449137pjs.31.2019.08.07.10.50.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 10:50:08 -0700 (PDT)
Date: Wed, 7 Aug 2019 19:50:06 +0200
From: Christian Brauner <christian@brauner.io>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 1/2] binder: Add default binder devices through
 binderfs when configured
Message-ID: <20190807174937.53qo7uninqi3c6xq@brauner.io>
References: <20190806184007.60739-1-hridya@google.com>
 <20190806184007.60739-2-hridya@google.com>
 <20190807110204.GL1974@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807110204.GL1974@kadam>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, kernel-team@android.com,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Joel Fernandes <joel@joelfernandes.org>,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 07, 2019 at 02:02:05PM +0300, Dan Carpenter wrote:
> On Tue, Aug 06, 2019 at 11:40:05AM -0700, Hridya Valsaraju wrote:
> > @@ -467,6 +466,9 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
> >  	int ret;
> >  	struct binderfs_info *info;
> >  	struct inode *inode = NULL;
> > +	struct binderfs_device device_info = { 0 };
> > +	const char *name;
> > +	size_t len;
> >  
> >  	sb->s_blocksize = PAGE_SIZE;
> >  	sb->s_blocksize_bits = PAGE_SHIFT;
> > @@ -521,7 +523,24 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
> >  	if (!sb->s_root)
> >  		return -ENOMEM;
> >  
> > -	return binderfs_binder_ctl_create(sb);
> > +	ret = binderfs_binder_ctl_create(sb);
> > +	if (ret)
> > +		return ret;
> > +
> > +	name = binder_devices_param;
> > +	for (len = strcspn(name, ","); len > 0; len = strcspn(name, ",")) {
> > +		strscpy(device_info.name, name, len + 1);
> > +		ret = binderfs_binder_device_create(inode, NULL, &device_info);
> > +		if (ret)
> > +			return ret;
> 
> We should probably clean up before returning...  The error handling code
> would probably be tricky to write though and it's not super common.

struct dentry *mount_nodev(struct file_system_type *fs_type,
	int flags, void *data,
	int (*fill_super)(struct super_block *, void *, int))
{
	<snip>

	error = fill_super(s, data, flags & SB_SILENT ? 1 : 0);
	if (error) {
		deactivate_locked_super(s);
		return ERR_PTR(error);
	}

	<snip>
}

	deactivate_locked_super()
will call
	fs->kill_sb(s)
which calls
	binderfs_kill_super()
which calls
	kill_litter_super()
the latter will destory any remaining dentries and then calls
	generic_shutdown_super()
which calls
	evict_inodes()
which calls
	evict(inode)
which calls the binderfs specific
	binderfs_evict_inode()
and get rid of the rest.

So manually cleaning up is not needed, imho.

Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
