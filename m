Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D360131A0D2
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 15:43:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E8FB387229;
	Fri, 12 Feb 2021 14:43:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id My2H+taCuZpk; Fri, 12 Feb 2021 14:43:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A8CA386F84;
	Fri, 12 Feb 2021 14:43:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F0101BF834
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 14:43:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4A79286C98
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 14:43:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rG7-boL9vkQ9 for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 14:43:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B1BF486C8A
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 14:43:13 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id EF24B64DDF;
 Fri, 12 Feb 2021 14:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613140993;
 bh=jdh6AjF6eRVBQzGJuNrW4QcNwQV/jqhkz37tNBHm5AI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wyEWvQVhgL9qJrnkmMF8OsoxdJNVNKvyuGvIpJJ+XaVts9gV6LEUeiLfPwqyG64Aj
 KNQA278q3tJJVdlgany3XpTzSHjkDfXu0ezmPF08lVbwmKQKdt7FMolJXqpWkCYjZc
 Maq7TWxUWV/1apZ3Wi8WSlcjFkni2G3UnRsHx4a8=
Date: Fri, 12 Feb 2021 15:43:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Anirudh Rayabharam <mail@anirudhrb.com>
Subject: Re: [PATCH] staging: wimax/i2400m: fix some byte order issues found
 by sparse
Message-ID: <YCaT/qLci4ap1grf@kroah.com>
References: <20210211202908.4604-1-mail@anirudhrb.com>
 <YCWVD34rU5Lu71/S@kroah.com> <YCaRAYjiz0TJH+4L@anirudhrb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCaRAYjiz0TJH+4L@anirudhrb.com>
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, linux-kernel@vger.kernel.org,
 kuba@kernel.org, colin.king@canonical.com, johannes@sipsolutions.net,
 lee.jones@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 12, 2021 at 08:00:25PM +0530, Anirudh Rayabharam wrote:
> On Thu, Feb 11, 2021 at 09:35:27PM +0100, Greg KH wrote:
> > On Fri, Feb 12, 2021 at 01:59:08AM +0530, Anirudh Rayabharam wrote:
> > > Fix sparse byte-order warnings in the i2400m_bm_cmd_prepare()
> > > function:
> > > 
> > > wimax/i2400m/fw.c:194:36: warning: restricted __le32 degrades to integer
> > > wimax/i2400m/fw.c:195:34: warning: invalid assignment: +=
> > > wimax/i2400m/fw.c:195:34:    left side has type unsigned int
> > > wimax/i2400m/fw.c:195:34:    right side has type restricted __le32
> > > wimax/i2400m/fw.c:196:32: warning: restricted __le32 degrades to integer
> > > wimax/i2400m/fw.c:196:47: warning: restricted __le32 degrades to integer
> > > wimax/i2400m/fw.c:196:66: warning: restricted __le32 degrades to integer
> > > 
> > > Signed-off-by: Anirudh Rayabharam <mail@anirudhrb.com>
> > > ---
> > >  drivers/staging/wimax/i2400m/fw.c | 14 +++++++++-----
> > >  1 file changed, 9 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/drivers/staging/wimax/i2400m/fw.c b/drivers/staging/wimax/i2400m/fw.c
> > > index b2fd4bd2c5f9..bce651a6b543 100644
> > > --- a/drivers/staging/wimax/i2400m/fw.c
> > > +++ b/drivers/staging/wimax/i2400m/fw.c
> > > @@ -189,12 +189,16 @@ void i2400m_bm_cmd_prepare(struct i2400m_bootrom_header *cmd)
> > >  {
> > >  	if (i2400m_brh_get_use_checksum(cmd)) {
> > >  		int i;
> > > -		u32 checksum = 0;
> > > +		__le32 checksum = 0;
> > 
> > __le32 is only for when the data crosses the kernel/user boundry, just
> > use le32 in the kernel for stuff like this.
> > 
> But that throws a compile error.

What error?

> Also, I don't see le32 defined
> in any common header. It is defined in fs/ntfs/types.h but that's not
> accessible here.

Ah, my fault, you are right, nevermind.

> > >  		const u32 *checksum_ptr = (void *) cmd->payload;
> > 
> > Add a blank line here, right?
> It wasn't there before but makes sense. I'll send v2 with this change.

Thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
