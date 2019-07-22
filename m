Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D7E6FDCA
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 12:29:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 155AD8565B;
	Mon, 22 Jul 2019 10:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vyBZYeogvi3R; Mon, 22 Jul 2019 10:29:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7AAC9853FD;
	Mon, 22 Jul 2019 10:29:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED1D91BF39A
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 10:29:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E91B1203BF
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 10:29:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NezVyiIogheY for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 10:29:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by silver.osuosl.org (Postfix) with ESMTPS id F018D2038F
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 10:29:16 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id s22so28185247qkj.12
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 03:29:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0NOGeJyfbedSFMqRuTXzJhGJqhWVTfys7Td6+TiU9cU=;
 b=Sw7DdYcOQiz7BWpWW4Urauu0r35jh6VTzLzEBtvRXLSczl5db5tOx6b9kKNKgaTjzm
 u5ZvmB+S0x1O7mVfgQemzCl3qy51fUyya+yrmGLiPwIG7WCQCkpKKIqim0FxhKL4N6pT
 F54Cl/Dqt+elmpVt9tUXQuGuCE3aSIKjnVDz1wVB9zRyicDFer88t+u/iZHwURBWevT9
 eyqmaof8m+eTa/KMQZXSINntuf7sq4CcxmBfFX1p8hyWM+T1lTa6DoMn402L8m37f9XS
 uDGINuVKIRZsFpXWTFkVl3eRiqS8KPYtPC+T8KaYwHCXBCEaqHFh1STit9/3k2sa4G/A
 kXJw==
X-Gm-Message-State: APjAAAU9Y8gVyw2yXrNCLfbXCHPo6YL0b7G/R2FBK9liHeKKBT7Yik6M
 cPHGY27EhL/wbNOSozMWPr4ruG7/zvNcfaZo4Bs=
X-Google-Smtp-Source: APXvYqzk3DuGvaGAEaTy+ImxITuZDO3qbOIA7saZZgJD0ZGnPw+qsE85yHCiUF55BTu2T15XmHYund5FGCRBFNzC2pc=
X-Received: by 2002:a37:4ac3:: with SMTP id
 x186mr44393855qka.138.1563791355964; 
 Mon, 22 Jul 2019 03:29:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190628123819.2785504-1-arnd@arndb.de>
 <20190628123819.2785504-4-arnd@arndb.de>
 <CA+FuTSexLuu8e1XHaY0ObGi46CgZnBpELecBr+kMgCU29Fa_gw@mail.gmail.com>
In-Reply-To: <CA+FuTSexLuu8e1XHaY0ObGi46CgZnBpELecBr+kMgCU29Fa_gw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 22 Jul 2019 12:28:59 +0200
Message-ID: <CAK8P3a0xPDmNDbxRkN6ssobFLu1-JLvMG3MSai844hinj2Bs8A@mail.gmail.com>
Subject: Re: [PATCH 4/4] ipvs: reduce kernel stack usage
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
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
Cc: James Morris <jmorris@namei.org>, driverdevel <devel@driverdev.osuosl.org>,
 linux-scsi <linux-scsi@vger.kernel.org>,
 James Smart <james.smart@broadcom.com>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, lvs-devel@vger.kernel.org,
 Julian Anastasov <ja@ssi.bg>, coreteam@netfilter.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Wensong Zhang <wensong@linux-vs.org>,
 Dick Kennedy <dick.kennedy@broadcom.com>, Kees Cook <keescook@chromium.org>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 Simon Horman <horms@verge.net.au>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Florian Westphal <fw@strlen.de>, linux-kernel <linux-kernel@vger.kernel.org>,
 netfilter-devel <netfilter-devel@vger.kernel.org>,
 Network Development <netdev@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 28, 2019 at 9:59 PM Willem de Bruijn
<willemdebruijn.kernel@gmail.com> wrote:
> On Fri, Jun 28, 2019 at 8:40 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > With the new CONFIG_GCC_PLUGIN_STRUCTLEAK_BYREF_ALL option, the stack
> > usage in the ipvs debug output grows because each instance of
> > IP_VS_DBG_BUF() now has its own buffer of 160 bytes that add up
> > rather than reusing the stack slots:
> >
> > net/netfilter/ipvs/ip_vs_core.c: In function 'ip_vs_sched_persist':
> > net/netfilter/ipvs/ip_vs_core.c:427:1: error: the frame size of 1052 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]
> > net/netfilter/ipvs/ip_vs_core.c: In function 'ip_vs_new_conn_out':
> > net/netfilter/ipvs/ip_vs_core.c:1231:1: error: the frame size of 1048 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]
> > net/netfilter/ipvs/ip_vs_ftp.c: In function 'ip_vs_ftp_out':
> > net/netfilter/ipvs/ip_vs_ftp.c:397:1: error: the frame size of 1104 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]
> > net/netfilter/ipvs/ip_vs_ftp.c: In function 'ip_vs_ftp_in':
> > net/netfilter/ipvs/ip_vs_ftp.c:555:1: error: the frame size of 1200 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]
> >
> > Since printk() already has a way to print IPv4/IPv6 addresses using
> > the %pIS format string, use that instead,
>
> since these are sockaddr_in and sockaddr_in6, should that have the 'n'
> specifier to denote network byteorder?

I double-checked the implementation, and don't see that make any difference,
as 'n' is the default.

> >  include/net/ip_vs.h             | 71 +++++++++++++++++++--------------
> >  net/netfilter/ipvs/ip_vs_core.c | 44 ++++++++++----------
> >  net/netfilter/ipvs/ip_vs_ftp.c  | 20 +++++-----
> >  3 files changed, 72 insertions(+), 63 deletions(-)
> >
> > diff --git a/include/net/ip_vs.h b/include/net/ip_vs.h
> > index 3759167f91f5..3dfbeef67be6 100644
> > --- a/include/net/ip_vs.h
> > +++ b/include/net/ip_vs.h
> > @@ -227,6 +227,16 @@ static inline const char *ip_vs_dbg_addr(int af, char *buf, size_t buf_len,
> >                        sizeof(ip_vs_dbg_buf), addr,                     \
> >                        &ip_vs_dbg_idx)
> >
> > +#define IP_VS_DBG_SOCKADDR4(fam, addr, port)                           \
> > +       (struct sockaddr*)&(struct sockaddr_in)                         \
> > +       { .sin_family = (fam), .sin_addr = (addr)->in, .sin_port = (port) }
>
> might as well set .sin_family = AF_INET here and AF_INET6 below?

That would work just same, but I don't see any advantage. As the family
and port members are the same between sockaddr_in and sockaddr_in6,
the compiler can decide to set these regardless to the argument values
regardless of the condition.

       Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
