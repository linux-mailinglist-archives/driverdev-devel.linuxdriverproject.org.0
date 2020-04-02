Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E718819C1EA
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 15:16:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1787F87EE0;
	Thu,  2 Apr 2020 13:16:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VJrfGTht2ckb; Thu,  2 Apr 2020 13:16:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCAC687EAC;
	Thu,  2 Apr 2020 13:16:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0EF711BF23F
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 13:16:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0B8EE860D1
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 13:16:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K4JYQediCl9Z for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 13:16:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A32F985FF3
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 13:16:23 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id a25so4208110wrd.0
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 06:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+Fq/Eghn+1NfjLYFOkcULDqoL6yltxz4HaQ8BR6dhF4=;
 b=jow3N/NtnJ2NUiBe8DP7aEx+duMfw+LnTB7XWPgLIux4aGU+0fWqa6/1lxkqSorFn9
 +0cUaHxbOcBjDwfe/fcJ5LlXShppifkG3pMKLII09QuEwxgAEbX8ImT08N6o0ud+4UM/
 2ZgzdGSAGskzGy/YI0pcksg2KoIiwslpiJHLewV2cjA2QJ0sAfk6ZvEVn3q8G43AvOeD
 c0pwEK9CYgrpjqHwMdvMdGukxek2nrYDaoNymTZfKt+9qg1LGG7rpANVqp+ApevTxC3j
 PwIXiYVvr/19VrpJH4wJ+y/f5kDJcc6sW5SV5q3pAgFB53lVp6SncEzRTyARCnd/j+rS
 YhMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+Fq/Eghn+1NfjLYFOkcULDqoL6yltxz4HaQ8BR6dhF4=;
 b=clL9FvBc6USLEAhI5SkIBi672Bq0FtzlMv1GFncP1J/S5CKK/5UHnDQRxi1uuXuyre
 67wuGrwvJAkfvaP90OIGrbGTxJYAJUE0iI2qMyztiSHK0+BONJJTbEqxwCTMRfEHlUqP
 LWeYhuVcU2f6nkg0MXi16q6JZ8+4tzWdiCcTYlDDdXba9u5+ZvjtKklM+8sd1TyVTA7X
 2v+JYmchGoCLmTOliG+Q8wDegnZMja4guNCnbinoC6udNgN8OzZ0h+875JY5cEfjzMPK
 76qP9wT8YOE3EuX2Mguwm9zcKzWbEuwjxtsYmhD0utgD6dXkNwba/ue6RYytO2Dxxfqg
 pX0Q==
X-Gm-Message-State: AGi0PubTkcDOoCqmGPNjmz6m7Q18Jto6qTGmvu2RkcUHf37RQI+Cr4fY
 3dMwoZxvzqEX9s2qzFRNZP4=
X-Google-Smtp-Source: APiQypIf6Ox3JWNLzTW5xz11z6IiJ42yBb5OEa/OTgAZ3d4kO0KMBXDPoOvBmm01icTzk30Vzq7Ofw==
X-Received: by 2002:adf:e74b:: with SMTP id c11mr3357240wrn.136.1585833382200; 
 Thu, 02 Apr 2020 06:16:22 -0700 (PDT)
Received: from arch-thunder.localdomain (a109-49-46-234.cpe.netcabo.pt.
 [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id j135sm7412272wmj.46.2020.04.02.06.16.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 06:16:21 -0700 (PDT)
Date: Thu, 2 Apr 2020 14:16:18 +0100
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH -next] staging: greybus: fix a missing-check bug in
 gb_lights_light_config()
Message-ID: <20200402131618.653dkeuz7c2vuujf@arch-thunder.localdomain>
References: <20200401030017.100274-1-chenzhou10@huawei.com>
 <20200402122228.GP2001@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402122228.GP2001@kadam>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 Chen Zhou <chenzhou10@huawei.com>, gregkh@linuxfoundation.org,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On Thu, Apr 02, 2020 at 03:22:28PM +0300, Dan Carpenter wrote:
> On Wed, Apr 01, 2020 at 11:00:17AM +0800, Chen Zhou wrote:
> > In gb_lights_light_config(), 'light->name' is allocated by kstrndup().
> > It returns NULL when fails, add check for it.
> > 
> > Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
> > ---
> >  drivers/staging/greybus/light.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/greybus/light.c b/drivers/staging/greybus/light.c
> > index d6ba25f..d2672b6 100644
> > --- a/drivers/staging/greybus/light.c
> > +++ b/drivers/staging/greybus/light.c
> > @@ -1026,7 +1026,8 @@ static int gb_lights_light_config(struct gb_lights *glights, u8 id)
> >  
> >  	light->channels_count = conf.channel_count;
> >  	light->name = kstrndup(conf.name, NAMES_MAX, GFP_KERNEL);
> > -
> > +	if (!light->name)
> > +		return -ENOMEM;
> >  	light->channels = kcalloc(light->channels_count,
> >  				  sizeof(struct gb_channel), GFP_KERNEL);
> >  	if (!light->channels)
> 
> The clean up in this function is non-existant.  :(

Yeah, this have a central point to do the cleanups, gb_lights_release,
since we may have other lights already configured at this point, we
could cleanup this specific one here, but than would need to make sure
all other already configure got clean also.

------
Cheers,
     Rui

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
