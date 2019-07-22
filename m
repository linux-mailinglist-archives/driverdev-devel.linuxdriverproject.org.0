Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5C76FD8F
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 12:17:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A8D48569B;
	Mon, 22 Jul 2019 10:17:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Srs0v5YClGwT; Mon, 22 Jul 2019 10:17:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5FD6815F2;
	Mon, 22 Jul 2019 10:17:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F44A1BF39A
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 10:17:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0BE5B817F8
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 10:17:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gSujfneQKCfv for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 10:17:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0634A815F2
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 10:17:09 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id v22so28139677qkj.8
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 03:17:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7CJkKA7SZFRonSxwlZKyw8W6pgs5EdX5dwdC50uPvBs=;
 b=TXAW+nYfehL80dx80etCtxI86jcWfqZh6FrG9JSHh9XgSWmmCApUWDMi+g3OwEGFuh
 dOhirehFl+PCOXuS/wFfKYCEkcHrmj+6MGXKFxj9Q9mW6X6HKUOvfz+kQk5dW/NGGKjB
 /LM2EOFQYUDmcaWXEmL/FTRTYhrqb4IQz8LA8LFj0HMKuwL04SkysYq/8votSAZLWVAV
 qNfMuPDPrnQNbK6Ru8K6JvPjbH8eor4ImcbdtkyY1YHE50gQW3Z74JMfWCjZBMM4xwit
 NpkGCdhhW5F9d4b7djw0nGhbYc8KdTy2NjNnCMvPdK1qr3NocmzGvRa5enbtv3b0Xc3M
 Ff1w==
X-Gm-Message-State: APjAAAUFUjiSZFhqJDbQBgYfdW/qpBDtx5Hc9jXuVKb2SOlo2b7THVnk
 GPfEA3S6++KvU5L9o/d25DwBjYYs81VJEBJuSl4=
X-Google-Smtp-Source: APXvYqy7ISax661sJxUrp3WbLhv5BC0kus4uGgZKznelHiJHcAGScOZIvY+BAP14dw/qwJzgUC+dnqfk8j1fG+ylzm4=
X-Received: by 2002:a37:4ac3:: with SMTP id
 x186mr44360140qka.138.1563790627957; 
 Mon, 22 Jul 2019 03:17:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190628123819.2785504-1-arnd@arndb.de>
 <20190628123819.2785504-4-arnd@arndb.de>
 <alpine.LFD.2.21.1906302308280.3788@ja.home.ssi.bg>
In-Reply-To: <alpine.LFD.2.21.1906302308280.3788@ja.home.ssi.bg>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 22 Jul 2019 12:16:51 +0200
Message-ID: <CAK8P3a03wShPgL85K-0W3UUc3QJWLbbs+ZVAnkKLkqg00vVehw@mail.gmail.com>
Subject: Re: [PATCH 4/4] ipvs: reduce kernel stack usage
To: Julian Anastasov <ja@ssi.bg>
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
 coreteam@netfilter.org, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Wensong Zhang <wensong@linux-vs.org>,
 Dick Kennedy <dick.kennedy@broadcom.com>, Kees Cook <keescook@chromium.org>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 Simon Horman <horms@verge.net.au>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Florian Westphal <fw@strlen.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 netfilter-devel <netfilter-devel@vger.kernel.org>,
 Networking <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 30, 2019 at 10:37 PM Julian Anastasov <ja@ssi.bg> wrote:
> On Fri, 28 Jun 2019, Arnd Bergmann wrote:

> >       struct ip_vs_conn *ctl_cp = cp->control;
> >       if (!ctl_cp) {
> > -             IP_VS_ERR_BUF("request control DEL for uncontrolled: "
> > -                           "%s:%d to %s:%d\n",
> > -                           IP_VS_DBG_ADDR(cp->af, &cp->caddr),
> > -                           ntohs(cp->cport),
> > -                           IP_VS_DBG_ADDR(cp->af, &cp->vaddr),
> > -                           ntohs(cp->vport));
> > +             pr_err("request control DEL for uncontrolled: "
> > +                    "%pISp to %pISp\n",

(replying a bit late)

>         ip_vs_dbg_addr() used compact form (%pI6c), so it would be
> better to use %pISc and %pISpc everywhere in IPVS...

done

>         Also, note that before now port was printed with %d and
> ntohs() was used, now port should be in network order, so:
>
> - ntohs() should be removed

done

> - htons() should be added, if missing. At first look, this case
> is not present in IPVS, we have only ntohs() usage

I found one case in ip_vs_ftp_in() that needs it in order to subtract one:

                IP_VS_DBG(7, "protocol %s %pISpc %pISpc\n",
                          ip_vs_proto_name(ipvsh->protocol),
-                         IP_VS_DBG_SOCKADDR(cp->af, &to, ntohs(port)),
+                         IP_VS_DBG_SOCKADDR(cp->af, &to, port),
                          IP_VS_DBG_SOCKADDR(cp->af, &cp->vaddr,
-                                             ntohs(cp->vport)-1));
+                                            htons(ntohs(cp->vport)-1)));

Thanks for the review, I'll send a new patch after some more
build testing on the new version.

       Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
