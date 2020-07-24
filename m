Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A2A22BADE
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 02:17:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6E68B22FB9;
	Fri, 24 Jul 2020 00:17:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id efSVJ5tZHebn; Fri, 24 Jul 2020 00:17:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 83A83228EA;
	Fri, 24 Jul 2020 00:17:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF4361BF9B6
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 00:17:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BADCA860D2
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 00:17:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id duByiWXEG0Ar for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 00:17:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f65.google.com (mail-ua1-f65.google.com
 [209.85.222.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 11E0985FFD
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 00:17:38 +0000 (UTC)
Received: by mail-ua1-f65.google.com with SMTP id l12so2419159uak.7
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 17:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tn6bqYg/1KWkV4kpAzCYFhcP+XCPRuDgdoeZet33vWk=;
 b=awreHD28nDVNZexMGVyopatjZJnZVe7HOWZqVLh+RCrrko33Dtr7aUGgwOkz5TkDTZ
 0yYGVwi8WX8RUoZPeer0O6R6Mkxv2fwqIKd57tgnZhCiaJXkJVcV2SPbhNZ3XCGWvsmS
 wfHBen5QSZrel1hvkK/0sXZYsKhLRDS4KyFac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tn6bqYg/1KWkV4kpAzCYFhcP+XCPRuDgdoeZet33vWk=;
 b=mCh/Lc7gt/3kbsoISYfqv5kKTykHQoFl7Ybh3/IB3/2JqOBNjaondi3YNg9cNE9/qI
 3OjbsOo3ayR2wI1AK+EEbqoaBRFEu1Wswbapgvh8NDkyPo2hYqNPcS3MeQiVPwPvgg1A
 RQIEvIKE7aV147W95i+Qxt7SujfHJEhrHZQm3eiOSKoyBIaGjVQ6ipqhCDA9E1i4KPnS
 WpLfsC4KVb6Vnuk/f/0URGqybRsLlNpDSawP0oV7/L4BtHMdJeukbgp4Ds1cWgcJhv8t
 7IPb8GRk+HLYHbtqNjtvePTR28DXJMn92nOJS8LbFdz/WZB8QYFzN9vWGPSEB5a0qyl0
 4cXA==
X-Gm-Message-State: AOAM531C/6diAI6yKmD5OnH2E4Q4R5/SPdOIZoFQ3tR4n79Cldsy2ZBX
 ys5nU1Mv5mzprnCN0vpzzdd73d6zqu3eS/RplpNPIQ==
X-Google-Smtp-Source: ABdhPJyap0e7CTwf8HrhrJhPhF9DOR7AKPD9OIoxL1bXe7v3Dk4cmLWDUcc1+/hhsto3hTn53fbsk/M7qmHWyPm46q8=
X-Received: by 2002:a9f:22c4:: with SMTP id 62mr6134025uan.135.1595549856863; 
 Thu, 23 Jul 2020 17:17:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200627070307.516803-1-drinkcat@chromium.org>
 <20200627070307.516803-2-drinkcat@chromium.org> <878sfanzft.fsf@kernel.org>
In-Reply-To: <878sfanzft.fsf@kernel.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 24 Jul 2020 08:17:25 +0800
Message-ID: <CANMq1KDugXcmvrGOJzcvWvbzScPDsQVuJ4gSDXTJan+FY1H3Ew@mail.gmail.com>
Subject: Re: [PATCH 1/4] usb: cdns3: gadget: Replace trace_printk by dev_dbg
To: Felipe Balbi <balbi@kernel.org>
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
Cc: Peter Chen <peter.chen@nxp.com>,
 "Guilherme G . Piccoli" <gpiccoli@canonical.com>,
 Rafael Aquini <aquini@redhat.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Howells <dhowells@redhat.com>, Tiezhu Yang <yangtiezhu@loongson.cn>,
 Will Deacon <will@kernel.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Kees Cook <keescook@chromium.org>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jayshri Pawar <jpawar@cadence.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Andy Gross <agross@kernel.org>,
 Tomas Winkler <tomas.winkler@intel.com>, Alexey Dobriyan <adobriyan@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Pawel Laszczak <pawell@cadence.com>, Daniel Vetter <daniel@ffwll.ch>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Chao Yu <chao@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Steven Rostedt <rostedt@goodmis.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Roger Quadros <rogerq@ti.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linux-usb@vger.kernel.org,
 lkml <linux-kernel@vger.kernel.org>, linux-f2fs-devel@lists.sourceforge.net,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Colin Ian King <colin.king@canonical.com>,
 Andrew Morton <akpm@linux-foundation.org>, Divya Indi <divya.indi@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 23, 2020 at 9:17 PM Felipe Balbi <balbi@kernel.org> wrote:
>
> Nicolas Boichat <drinkcat@chromium.org> writes:
>
> > trace_printk should not be used in production code, replace it
> > call with dev_dbg.
> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> >
> > ---
> >
> > Unclear why a trace_printk was used in the first place, it's
> > possible that some rate-limiting is necessary here.
> >
> >  drivers/usb/cdns3/gadget.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/usb/cdns3/gadget.c b/drivers/usb/cdns3/gadget.c
> > index 5e24c2e57c0d8c8..c303ab7c62d1651 100644
> > --- a/drivers/usb/cdns3/gadget.c
> > +++ b/drivers/usb/cdns3/gadget.c
> > @@ -421,7 +421,7 @@ static int cdns3_start_all_request(struct cdns3_device *priv_dev,
> >               if ((priv_req->flags & REQUEST_INTERNAL) ||
> >                   (priv_ep->flags & EP_TDLCHK_EN) ||
> >                       priv_ep->use_streams) {
> > -                     trace_printk("Blocking external request\n");
> > +                     dev_dbg(priv_dev->dev, "Blocking external request\n");
>
> Instead, I would suggest adding a proper trace event here; one that
> includes "priv_ep->flags" in the output.

The patch was already merged by Greg
(https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/usb/cdns3/gadget.c?id=b3a5ce874c2619c9b8a6c5bbcfefdb95e0227600),
but feel free to do that as a follow-up CL.

Looks like Peter -- the main author, is ok with dev_dbg (also,
apologies for missing the R-b tag when I sent a v2 -- which is the one
that was merged by Greg).

Thanks,

>
> --
> balbi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
