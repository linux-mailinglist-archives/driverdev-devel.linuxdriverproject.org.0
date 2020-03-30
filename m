Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118FD198771
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 00:33:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 13C0C88541;
	Mon, 30 Mar 2020 22:33:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UtWg1YwRzmM4; Mon, 30 Mar 2020 22:33:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73D718851D;
	Mon, 30 Mar 2020 22:33:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7475D1BF3B5
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 22:33:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 708928843B
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 22:33:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id perCvt6iM0bi for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 22:33:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [63.128.21.74])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8ADA088400
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 22:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585607581;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jvgEeFjtAh1QWGoc60hjoonPbLbA3KJyXugPITzRpSc=;
 b=TO2rHneNS0KldRS8OU0qcU+Sn/kI84AinnqDjAXFkuo1piq0mPCEHXijW12iab9kbTBTsO
 5SSHuYFEDAM2/51/BWDMhF5Klz1jMYcyhLbK1fx3VJMSTJC8fixxJ2VA86Hx2413Aqg/8N
 JOr8m8luKB8/yIVrClA8L2gvaXfyIhU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-144-rmPQzsmXOOCvOv3gMS0LeA-1; Mon, 30 Mar 2020 18:32:57 -0400
X-MC-Unique: rmPQzsmXOOCvOv3gMS0LeA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A5B86800D50;
 Mon, 30 Mar 2020 22:32:55 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D13996EFA4;
 Mon, 30 Mar 2020 22:32:51 +0000 (UTC)
Date: Tue, 31 Mar 2020 00:32:44 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: Re: [PATCH v6] staging: vt6656: add error code handling to unused
 variable
Message-ID: <20200331003244.4e9f5ce2@elisabeth>
In-Reply-To: <61bb6678d48557895671488357a62680d0ae655f.camel@gmail.com>
References: <20200330214613.31078-1-jbwyatt4@gmail.com>
 <20200331000143.7c8f98c0@elisabeth>
 <61bb6678d48557895671488357a62680d0ae655f.camel@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
 Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 30 Mar 2020 15:26:04 -0700
"John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:

> On Tue, 2020-03-31 at 00:01 +0200, Stefano Brivio wrote:
> > On Mon, 30 Mar 2020 14:46:13 -0700
> > "John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:
> >   
> > > Add error code handling to unused 'ret' variable that was never
> > > used.
> > > Return an error code from functions called within
> > > vnt_radio_power_on.
> > > 
> > > Issue reported by coccinelle (coccicheck).
> > > 
> > > Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> > > Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> > > Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> > > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > > ---
> > > v6: Forgot to add all the v5 code to commit.
> > > 
> > > v5: Remove Suggested-by: Julia Lawall above seperator line.
> > > 	Remove break; statement in switch block.
> > > 	break; removal checked by both gcc compile and checkpatch.
> > > 	Suggested by Stefano Brivio <sbrivio@redhat.com>
> > > 
> > > v4: Move Suggested-by: Julia Lawall above seperator line.
> > >     Add Reviewed-by tag as requested by Quentin Deslandes.
> > > 
> > > v3: Forgot to add v2 code changes to commit.
> > > 
> > > v2: Replace goto statements with return.
> > >     Remove last if check because it was unneeded.
> > >     Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> > > 
> > >  drivers/staging/vt6656/card.c | 20 ++++++++++++--------
> > >  1 file changed, 12 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/staging/vt6656/card.c
> > > b/drivers/staging/vt6656/card.c
> > > index dc3ab10eb630..c947e8188384 100644
> > > --- a/drivers/staging/vt6656/card.c
> > > +++ b/drivers/staging/vt6656/card.c
> > > @@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private
> > > *priv)
> > >  {
> > >  	int ret = 0;
> > >  
> > > -	vnt_exit_deep_sleep(priv);
> > > +	ret = vnt_exit_deep_sleep(priv);
> > > +	if (ret)
> > > +		return ret;
> > >  
> > > -	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> > > +	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> > > +	if (ret)
> > > +		return ret;
> > >  
> > >  	switch (priv->rf_type) {
> > >  	case RF_AL2230:
> > > @@ -734,14 +738,14 @@ int vnt_radio_power_on(struct vnt_private
> > > *priv)
> > >  	case RF_VT3226:
> > >  	case RF_VT3226D0:
> > >  	case RF_VT3342A0:
> > > -		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> > > -				    (SOFTPWRCTL_SWPE2 |
> > > SOFTPWRCTL_SWPE3));
> > > -		break;
> > > +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> > > +					  (SOFTPWRCTL_SWPE2 | 
> > > +					  SOFTPWRCTL_SWPE3));
> > >  	}
> > > +	if (ret)
> > > +		return ret;  
> > 
> > Hmm, sorry, I haven't been clear enough I guess.
> > 
> > This is what you're doing:
> > 
> > if rf_type is not in that list:
> > - set some bits in a register
> > - did it fail? return
> > - did it fail? return
> > ...
> > 
> > if rf_type is in that list:
> > - set some bits in a register
> > - did it fail? return
> > - set some other bits
> > - did it fail? return
> > ...
> > 
> > Now, the "set some other bits" part is already selected depending on
> > rf_type. There's no need to check 'ret' otherwise, so you can move
> > the
> > return just after setting 'ret', in the switch case.
> >   
> 
> Thank you for pointing that out Stefano. That would be a serious issue
> with logic.
> 
> Just to be sure. Are you looking for this?
> 
> switch (priv->rf_type) {
> case RF_AL2230:
> case RF_AL2230S:
> case RF_AIROHA7230:
> case RF_VT3226:
> case RF_VT3226D0:
> case RF_VT3342A0:
> 	ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> 				  (SOFTPWRCTL_SWPE2 | 
> 				  SOFTPWRCTL_SWPE3));
> 	if (ret)
> 		return ret;
> }

Exactly.

> > With a check, because you don't want to return if ret == 0.
> >   
> 
> What do you mean exactly by this?

Exactly what you wrote above: if (ret) ...

> The new code should only return a 0 at the end of the function with the
> vnt_mac_reg_bits_off call.

That, or an error code if vnt_mac_reg_bits_off() fails.

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
