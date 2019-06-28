Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA27B5A588
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 21:59:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1EA0E867E5;
	Fri, 28 Jun 2019 19:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kSykQy5Mx8pb; Fri, 28 Jun 2019 19:59:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D882E867C6;
	Fri, 28 Jun 2019 19:59:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 51F231BF20B
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 19:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C218867C6
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 19:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5LzH1ENSy-kS for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 19:59:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f196.google.com (mail-yb1-f196.google.com
 [209.85.219.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 97A52867BD
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 19:59:01 +0000 (UTC)
Received: by mail-yb1-f196.google.com with SMTP id y67so4884868yba.8
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 12:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JnkachwQP0cyQ9JdMbTUnW5qndJ/fTXRxpRomw9WY6k=;
 b=vVLyvukrpuQtbZdzKfeFDmHdS8rq0f9WdO6YO1eZI6sLIUF996To1rdL8/7+axITIy
 85yp8tjhuqeC8aQG5v6WRyAA6OCt/OvXJzXuB3erg1B1/6I/VhC97S1snroCo/cGfDMP
 uVp7k4O91vtcWDPfd0EgxARsjrcpaEz0vxiRw/U3zJGyqOMaKnEbJrlYwP0YHPX11owd
 ydc6SDTxO8stFGHPET1XRyuFJtUOZ/g0botEElyakKaPs0TwZwUnhxua9Brg/C7XrXzK
 Tzz95CL2xg4AohWS6sDOA/H16jSdpmsb38czV9xkwcdD72qnaCznSjjlKboOu3AVh9Qv
 0LPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JnkachwQP0cyQ9JdMbTUnW5qndJ/fTXRxpRomw9WY6k=;
 b=tK/+nGVnvx5Ffy/CVvWzkjhlj9TB3aNIjKp+RgjJlmX1nfR+p7DML+Xffw4AiVL4NX
 S4L4NGCJIkLuEpq0OVOqRZYhG263WxT+GYLNikzr1PMjyPXYgadrLDINFqrL07kKuZp4
 QdyJY0huaMDqyOPNpG6oirnnUFkZMU8329bHc1XDMd/TIOqvRiD779Kh5YO6v7dVEN9i
 ZEGGUXupCmtmk/9xtRZdozanMNiRoD02K8hna+YLDC2Nlsr8hQYt/ZGB9/7SOt1IPgf2
 TPQaxaQ1kv/A/AAp/NFQUGsNJ/gVqxjrv0C64Zz/ckPVaGHFGv4tu4jC6g+6YU7ULDyC
 6XkQ==
X-Gm-Message-State: APjAAAW3nED8Kb+Z8/fOIBIjFmQ8mHs5VQUfM7eKQ0f2256CX/UpHeBZ
 j1EvR78RfB0z3Dgs149/CokxC4+L/cw=
X-Google-Smtp-Source: APXvYqxHWiAR5TbBlzCQo88cVCGMjKk2f/H6n8z5rUd4kyJxnNTBYWpnX2ua3ZWqTdOnVjBpqIC4wA==
X-Received: by 2002:a25:7206:: with SMTP id n6mr7531569ybc.81.1561751940469;
 Fri, 28 Jun 2019 12:59:00 -0700 (PDT)
Received: from mail-yw1-f41.google.com (mail-yw1-f41.google.com.
 [209.85.161.41])
 by smtp.gmail.com with ESMTPSA id j207sm690254ywj.35.2019.06.28.12.59.00
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 12:59:00 -0700 (PDT)
Received: by mail-yw1-f41.google.com with SMTP id n127so1539951ywd.9
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 12:59:00 -0700 (PDT)
X-Received: by 2002:a81:4807:: with SMTP id v7mr6063772ywa.494.1561751494211; 
 Fri, 28 Jun 2019 12:51:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190628123819.2785504-1-arnd@arndb.de>
 <20190628123819.2785504-4-arnd@arndb.de>
In-Reply-To: <20190628123819.2785504-4-arnd@arndb.de>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Fri, 28 Jun 2019 15:50:57 -0400
X-Gmail-Original-Message-ID: <CA+FuTSexLuu8e1XHaY0ObGi46CgZnBpELecBr+kMgCU29Fa_gw@mail.gmail.com>
Message-ID: <CA+FuTSexLuu8e1XHaY0ObGi46CgZnBpELecBr+kMgCU29Fa_gw@mail.gmail.com>
Subject: Re: [PATCH 4/4] ipvs: reduce kernel stack usage
To: Arnd Bergmann <arnd@arndb.de>
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
Cc: James Morris <jmorris@namei.org>, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, James Smart <james.smart@broadcom.com>,
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

On Fri, Jun 28, 2019 at 8:40 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> With the new CONFIG_GCC_PLUGIN_STRUCTLEAK_BYREF_ALL option, the stack
> usage in the ipvs debug output grows because each instance of
> IP_VS_DBG_BUF() now has its own buffer of 160 bytes that add up
> rather than reusing the stack slots:
>
> net/netfilter/ipvs/ip_vs_core.c: In function 'ip_vs_sched_persist':
> net/netfilter/ipvs/ip_vs_core.c:427:1: error: the frame size of 1052 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]
> net/netfilter/ipvs/ip_vs_core.c: In function 'ip_vs_new_conn_out':
> net/netfilter/ipvs/ip_vs_core.c:1231:1: error: the frame size of 1048 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]
> net/netfilter/ipvs/ip_vs_ftp.c: In function 'ip_vs_ftp_out':
> net/netfilter/ipvs/ip_vs_ftp.c:397:1: error: the frame size of 1104 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]
> net/netfilter/ipvs/ip_vs_ftp.c: In function 'ip_vs_ftp_in':
> net/netfilter/ipvs/ip_vs_ftp.c:555:1: error: the frame size of 1200 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]
>
> Since printk() already has a way to print IPv4/IPv6 addresses using
> the %pIS format string, use that instead,

since these are sockaddr_in and sockaddr_in6, should that have the 'n'
specifier to denote network byteorder?

> combined with a macro that
> creates a local sockaddr structure on the stack. These will still
> add up, but the stack frames are now under 200 bytes.

would it make sense to just define a helper function that takes const
char * level and msg strings and up to three struct nf_inet_addr* and
do the conversion in there? No need for macros and no state on the
stack outside error paths at all.

>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> I'm not sure this actually does what I think it does. Someone
> needs to verify that we correctly print the addresses here.
> I've also only added three files that caused the warning messages
> to be reported. There are still a lot of other instances of
> IP_VS_DBG_BUF() that could be converted the same way after the
> basic idea is confirmed.
> ---
>  include/net/ip_vs.h             | 71 +++++++++++++++++++--------------
>  net/netfilter/ipvs/ip_vs_core.c | 44 ++++++++++----------
>  net/netfilter/ipvs/ip_vs_ftp.c  | 20 +++++-----
>  3 files changed, 72 insertions(+), 63 deletions(-)
>
> diff --git a/include/net/ip_vs.h b/include/net/ip_vs.h
> index 3759167f91f5..3dfbeef67be6 100644
> --- a/include/net/ip_vs.h
> +++ b/include/net/ip_vs.h
> @@ -227,6 +227,16 @@ static inline const char *ip_vs_dbg_addr(int af, char *buf, size_t buf_len,
>                        sizeof(ip_vs_dbg_buf), addr,                     \
>                        &ip_vs_dbg_idx)
>
> +#define IP_VS_DBG_SOCKADDR4(fam, addr, port)                           \
> +       (struct sockaddr*)&(struct sockaddr_in)                         \
> +       { .sin_family = (fam), .sin_addr = (addr)->in, .sin_port = (port) }

might as well set .sin_family = AF_INET here and AF_INET6 below?

> +#define IP_VS_DBG_SOCKADDR6(fam, addr, port)                           \
> +       (struct sockaddr*)&(struct sockaddr_in6) \
> +       { .sin6_family = (fam), .sin6_addr = (addr)->in6, .sin6_port = (port) }
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
