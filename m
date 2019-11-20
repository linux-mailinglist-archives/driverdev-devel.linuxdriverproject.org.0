Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 919DA103E71
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 16:29:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01641875A2;
	Wed, 20 Nov 2019 15:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bN7v0WuAZdfM; Wed, 20 Nov 2019 15:29:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F15B87CA4;
	Wed, 20 Nov 2019 15:29:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 209AC1BF5EA
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 15:28:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1DD8E87582
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 15:28:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1TbRTnoKaAYU for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 15:28:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5936587589
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 15:28:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 07:28:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="209568358"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga003.jf.intel.com with ESMTP; 20 Nov 2019 07:28:51 -0800
Received: from andy by smile with local (Exim 4.93-RC1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iXRuU-0006qT-KF; Wed, 20 Nov 2019 17:28:50 +0200
Date: Wed, 20 Nov 2019 17:28:50 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Subject: Re: [PATCH v1 3/5] fbtft: Drop useless #ifdef CONFIG_OF and dead code
Message-ID: <20191120152850.GQ32742@smile.fi.intel.com>
References: <20191120095716.26628-1-andriy.shevchenko@linux.intel.com>
 <20191120095716.26628-3-andriy.shevchenko@linux.intel.com>
 <37435de0-873d-d20c-ac66-420ba91356fd@tronnes.org>
 <676c3f0e-81b7-d9be-8b37-a38eb3d762fb@tronnes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <676c3f0e-81b7-d9be-8b37-a38eb3d762fb@tronnes.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fbdev@vger.kernel.org, Nishad Kamdar <nishadkamdar@gmail.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 20, 2019 at 04:04:17PM +0100, Noralf Tr=F8nnes wrote:
> Den 20.11.2019 15.43, skrev Noralf Tr=F8nnes:
> > Den 20.11.2019 10.57, skrev Andy Shevchenko:

> >> First of all there is no need to guard GPIO request by CONFIG_OF.
> >> It works for everybody independently on resource provider. While here,
> >> rename the function to reflect the above.
> >>
> >> Moreover, since we have a global dependency to OF, the rest of
> >> conditional compilation is no-op, i.e. it's always be true.
> >>
> >> Due to above drop useless #ifdef CONFIG_OF and therefore dead code.
> >>
> >> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> >> ---
> >>  drivers/staging/fbtft/fbtft-core.c | 19 ++-----------------
> >>  1 file changed, 2 insertions(+), 17 deletions(-)
> >>
> >> diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtf=
t/fbtft-core.c
> > =

> > <snip>
> > =

> >> @@ -1184,17 +1176,10 @@ static struct fbtft_platform_data *fbtft_probe=
_dt(struct device *dev)
> >>  		pdata->display.backlight =3D 1;
> >>  	if (of_find_property(node, "init", NULL))
> >>  		pdata->display.fbtftops.init_display =3D fbtft_init_display_dt;
> >> -	pdata->display.fbtftops.request_gpios =3D fbtft_request_gpios_dt;
> >> +	pdata->display.fbtftops.request_gpios =3D fbtft_request_gpios;
> > =

> > You can ditch the .request_gpios callback and call fbtft_request_gpios()
> > directly in fbtft_register_framebuffer(). That will make it safe to drop
> > the OF dependency, otherwise .request_gpios will be NULL in the non-DT
> > case. This is one of the bugs that follwed the gpio refactoring.
> =

> Really difficult to read this fbtft code (that I wrote...).
> The NULL deref can only happen when dev->platform_data is set. That
> can't happen, in mainline at least, now that fbtft_device is gone.

Hmm... If I read code correctly this patch doesn't change this logic. We ha=
ve
non-NULL ->request_gpios() in case of pdata !=3D NULL if and only if suppli=
er
gives it to us.

The above assignment happens only for DT case (fbtft_properties_read() is
guarded against non-DT, okay non-fwnode, cases).

> > You can also ditch the .request_gpios_match callback if you want, it
> > isn't called anymore (it is set in fb_agm1264k-fl).

I guess both improvements can be done later since they are not affecting the
logic in this series.

-- =

With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
