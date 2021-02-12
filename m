Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD23331A09A
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 15:30:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0867A872E0;
	Fri, 12 Feb 2021 14:30:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R2NAp6qOcZGb; Fri, 12 Feb 2021 14:30:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22A8487041;
	Fri, 12 Feb 2021 14:30:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 347B31BF834
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 14:30:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2A75A87041
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 14:30:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C9oFs7+ZifIP for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 14:30:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-of-o53.zoho.com (sender4-of-o53.zoho.com
 [136.143.188.53])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6DA458701A
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 14:30:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1613140236; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Ondve+616aga3AP+JJu9qmuv9Y4zDGq37O7hDNUoa5d/GbqXgPHlhsFJHf8P0o/Vu0S1eZBTMK3Mr28sASaFggYICAveYCwPU75K4fhX5vV/F7BZpAR5UaPg1dD/fzsxik3sbdfsR7Jv54HO9Xo+273OKkJVLwFpKWBxwq4/L9w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1613140236;
 h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=Q8O5Qs3111yoIb9wYiJMFK7cbtbsKWkl/sUb8tdzYTg=; 
 b=bw1doOuHka2+cOHF/fO3vFUdGUR/LSQAWM2GNzy0/rAkMpOkq8ibsHuAQGwosA+ATf0OdY1BJgO/YomsGQqACzztSSD4IizUD4HfpcikQFb584SAlt7TolOWkKlr2bKi2wFNH10APcCwEDn3YyV0JOd9Jy0foprnhHLmVY83Q5k=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=anirudhrb.com;
 spf=pass  smtp.mailfrom=mail@anirudhrb.com;
 dmarc=pass header.from=<mail@anirudhrb.com> header.from=<mail@anirudhrb.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1613140236; 
 s=zoho; d=anirudhrb.com; i=mail@anirudhrb.com;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
 bh=Q8O5Qs3111yoIb9wYiJMFK7cbtbsKWkl/sUb8tdzYTg=;
 b=oErKEv2OVnJC35kqOKFhd3R34X/1p7jVTlqT5SgD1C1AwVG/91y4GktQEOer9nUa
 +sK8sQ0JGs8abhekaaSHJHtIqQPuzwHD/4slS6L+9R7QL6XukmLK2GIntUsyfGoB+B4
 svfOdOq00JOtITE39F9JQNk+9m0zehNH87FA5Ldo=
Received: from anirudhrb.com (106.51.107.38 [106.51.107.38]) by mx.zohomail.com
 with SMTPS id 1613140233736897.9350951376649;
 Fri, 12 Feb 2021 06:30:33 -0800 (PST)
Date: Fri, 12 Feb 2021 20:00:25 +0530
From: Anirudh Rayabharam <mail@anirudhrb.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: wimax/i2400m: fix some byte order issues found
 by sparse
Message-ID: <YCaRAYjiz0TJH+4L@anirudhrb.com>
References: <20210211202908.4604-1-mail@anirudhrb.com>
 <YCWVD34rU5Lu71/S@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCWVD34rU5Lu71/S@kroah.com>
X-ZohoMailClient: External
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
 colin.king@canonical.com, kuba@kernel.org, johannes@sipsolutions.net,
 lee.jones@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 09:35:27PM +0100, Greg KH wrote:
> On Fri, Feb 12, 2021 at 01:59:08AM +0530, Anirudh Rayabharam wrote:
> > Fix sparse byte-order warnings in the i2400m_bm_cmd_prepare()
> > function:
> > 
> > wimax/i2400m/fw.c:194:36: warning: restricted __le32 degrades to integer
> > wimax/i2400m/fw.c:195:34: warning: invalid assignment: +=
> > wimax/i2400m/fw.c:195:34:    left side has type unsigned int
> > wimax/i2400m/fw.c:195:34:    right side has type restricted __le32
> > wimax/i2400m/fw.c:196:32: warning: restricted __le32 degrades to integer
> > wimax/i2400m/fw.c:196:47: warning: restricted __le32 degrades to integer
> > wimax/i2400m/fw.c:196:66: warning: restricted __le32 degrades to integer
> > 
> > Signed-off-by: Anirudh Rayabharam <mail@anirudhrb.com>
> > ---
> >  drivers/staging/wimax/i2400m/fw.c | 14 +++++++++-----
> >  1 file changed, 9 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/staging/wimax/i2400m/fw.c b/drivers/staging/wimax/i2400m/fw.c
> > index b2fd4bd2c5f9..bce651a6b543 100644
> > --- a/drivers/staging/wimax/i2400m/fw.c
> > +++ b/drivers/staging/wimax/i2400m/fw.c
> > @@ -189,12 +189,16 @@ void i2400m_bm_cmd_prepare(struct i2400m_bootrom_header *cmd)
> >  {
> >  	if (i2400m_brh_get_use_checksum(cmd)) {
> >  		int i;
> > -		u32 checksum = 0;
> > +		__le32 checksum = 0;
> 
> __le32 is only for when the data crosses the kernel/user boundry, just
> use le32 in the kernel for stuff like this.
> 
But that throws a compile error. Also, I don't see le32 defined
in any common header. It is defined in fs/ntfs/types.h but that's not
accessible here.

> >  		const u32 *checksum_ptr = (void *) cmd->payload;
> 
> Add a blank line here, right?
It wasn't there before but makes sense. I'll send v2 with this change.

Thanks!

	- Anirudh.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
