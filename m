Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA523570E
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 08:34:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D7A586DAF;
	Wed,  5 Jun 2019 06:34:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ozaJ507vnvTL; Wed,  5 Jun 2019 06:34:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C940C86D03;
	Wed,  5 Jun 2019 06:34:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF18D1BF59B
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 06:34:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E798186D08
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 06:34:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LRIKsPqSSxfg for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 06:34:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 30F8686D03
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 06:34:48 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id u17so14250373pfn.7
 for <devel@driverdev.osuosl.org>; Tue, 04 Jun 2019 23:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=j74qjlM9WHB/196pmL6fsOcRFlXhlEU+5GmJo6s7F+8=;
 b=CsBDsCgdKy2tmN10RVUFOkVGzO02MkUhApWGr1QfWdYFte3UwhHpx2ck98TR5XKkR5
 fue5UeS7NgR1wyjCjnq2ij/OuchDoLKWdMoPOItqW4a1iYW+oULbWjInnUd9TMjazq9y
 kmd0UVOF2+aNKxqdt0ceWaw9KBj9w6SpchvHz7QJMpq1s2OBOv3cD19PQ5JqLrMITHWx
 UouHjMaWulH4rbtxw6I36NLKi8P7vKn/cUtwKLdfnWvcg4ZVxaip2visKNUWFrAJGZvt
 Dtyr5o/RdLRtw/aZAIJYjf7lqIF8aAv7nkbPq2/JwyvxL6agQI+vBDrXjO63GRFsDjJU
 HnMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=j74qjlM9WHB/196pmL6fsOcRFlXhlEU+5GmJo6s7F+8=;
 b=sqmKwagqZbe5gzRRbJNCgUFXLTt30Wyv+BJcSisvg24mC/HZLcxx4uDoBrGNBmHYsX
 /1N7ZA4UeDOavMaJcvVqXrmDUSR07k3fS6kjqGO+zwSSrUew8+SOtqjQC50O0tQ0MB8+
 ctU37/VUCOADrrOS2woFFyKuK4Mr4uWMr42CkU+BzH+fcJE0MhvkSm+NvXMwWqLAVXvP
 am54TX3oRGQyhfKBKG894Vno8ZlnUUBdJEMxheVnSWQasRIgfRxfQJYJJswMH73/QKUC
 1m5sOrN32ccqj+l/QPa5gNcSIub8YpWc31s/EybApKok0KzlTw+SZymuN60rsIcnnH6W
 tvyw==
X-Gm-Message-State: APjAAAVqfMB3+gBVjRdvCngMqwCEiOK2THGGrqwu5oFptSMC+GAHqPhq
 widJcKXlDEwF+bhWgY0Q59Y=
X-Google-Smtp-Source: APXvYqzPGv/7y9UAzLcfW+q34ftFwU4lXb9cv68W48k+vuyxMyUPfHuwuxafzZz7Zb1IShN4jQ0FWA==
X-Received: by 2002:a17:90a:ac14:: with SMTP id
 o20mr14295818pjq.114.1559716487770; 
 Tue, 04 Jun 2019 23:34:47 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id q12sm29106397pgs.22.2019.06.04.23.34.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 23:34:47 -0700 (PDT)
Date: Wed, 5 Jun 2019 12:04:43 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Carmeli Tamir <carmeli.tamir@gmail.com>,
 Nishad Kamdar <nishadkamdar@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Staging: emxx_udc: fix warning "sum of probable
 bitmasks, consider |"
Message-ID: <20190605063443.GA5248@hari-Inspiron-1545>
References: <20190603185412.GA11183@hari-Inspiron-1545>
 <20190603190457.GA6487@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603190457.GA6487@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 03, 2019 at 09:04:57PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Jun 04, 2019 at 12:24:12AM +0530, Hariprasad Kelam wrote:
> > Knowing the fact that operator '|' is faster than '+'.
> > Its better we replace + with | in this case.
> > 
> > Issue reported by coccicheck
> > drivers/staging/emxx_udc/emxx_udc.h:94:34-35: WARNING: sum of probable
> > bitmasks, consider |
> > 
> > Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> > ---
> >  drivers/staging/emxx_udc/emxx_udc.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> > index b8c3dee..88d6bda 100644
> > --- a/drivers/staging/emxx_udc/emxx_udc.h
> > +++ b/drivers/staging/emxx_udc/emxx_udc.h
> > @@ -91,7 +91,7 @@ int vbus_irq;
> >  #define BIT30		0x40000000
> >  #define BIT31		0x80000000
> 
> All of those BITXX defines should be removed and the "real" BIT(X) macro
> used instead.
Yes will send separate patch  to address this.
> 
> > -#define TEST_FORCE_ENABLE		(BIT18 + BIT16)
> > +#define TEST_FORCE_ENABLE		(BIT18 | BIT16)
> 
> It really doesn't matter, a good compiler will have already turned this
> into a constant value so you really do not know if this is less/faster
> code or not, right?
> 
> Did you look at the output to verify this actually changed anything?
> 
> thanks,
> 
> greg k-h

Ok . Treating this as false postive from coccicheck.

Thanks,
Hariprasad k
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
