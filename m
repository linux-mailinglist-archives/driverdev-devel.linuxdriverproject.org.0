Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E025B197
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Jun 2019 22:42:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D781886132;
	Sun, 30 Jun 2019 20:42:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sgux2v6naBsJ; Sun, 30 Jun 2019 20:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F2CC485DB1;
	Sun, 30 Jun 2019 20:42:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EFF6A1BF308
 for <devel@linuxdriverproject.org>; Sun, 30 Jun 2019 20:42:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EB66220388
 for <devel@linuxdriverproject.org>; Sun, 30 Jun 2019 20:42:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dtdbOjZmTVnJ for <devel@linuxdriverproject.org>;
 Sun, 30 Jun 2019 20:42:22 +0000 (UTC)
X-Greylist: delayed 00:05:07 by SQLgrey-1.7.6
Received: from ja.ssi.bg (unknown [178.16.129.10])
 by silver.osuosl.org (Postfix) with ESMTPS id 260F720376
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 20:42:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
 by ja.ssi.bg (8.15.2/8.15.2) with ESMTP id x5UKafTT007280;
 Sun, 30 Jun 2019 23:36:41 +0300
Date: Sun, 30 Jun 2019 23:36:41 +0300 (EEST)
From: Julian Anastasov <ja@ssi.bg>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 4/4] ipvs: reduce kernel stack usage
In-Reply-To: <20190628123819.2785504-4-arnd@arndb.de>
Message-ID: <alpine.LFD.2.21.1906302308280.3788@ja.home.ssi.bg>
References: <20190628123819.2785504-1-arnd@arndb.de>
 <20190628123819.2785504-4-arnd@arndb.de>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
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
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 netfilter-devel@vger.kernel.org, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


	Hello,

On Fri, 28 Jun 2019, Arnd Bergmann wrote:

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
> the %pIS format string, use that instead, combined with a macro that
> creates a local sockaddr structure on the stack. These will still
> add up, but the stack frames are now under 200 bytes.
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
>  		       sizeof(ip_vs_dbg_buf), addr,			\
>  		       &ip_vs_dbg_idx)
>  
> +#define IP_VS_DBG_SOCKADDR4(fam, addr, port)				\
> +	(struct sockaddr*)&(struct sockaddr_in)				\
> +	{ .sin_family = (fam), .sin_addr = (addr)->in, .sin_port = (port) }
> +#define IP_VS_DBG_SOCKADDR6(fam, addr, port)				\
> +	(struct sockaddr*)&(struct sockaddr_in6) \
> +	{ .sin6_family = (fam), .sin6_addr = (addr)->in6, .sin6_port = (port) }
> +#define IP_VS_DBG_SOCKADDR(fam, addr, port) (fam == AF_INET ?		\
> +			IP_VS_DBG_SOCKADDR4(fam, addr, port) :		\
> +			IP_VS_DBG_SOCKADDR6(fam, addr, port))
> +
>  #define IP_VS_DBG(level, msg, ...)					\
>  	do {								\
>  		if (level <= ip_vs_get_debug_level())			\
> @@ -251,6 +261,7 @@ static inline const char *ip_vs_dbg_addr(int af, char *buf, size_t buf_len,
>  #else	/* NO DEBUGGING at ALL */
>  #define IP_VS_DBG_BUF(level, msg...)  do {} while (0)
>  #define IP_VS_ERR_BUF(msg...)  do {} while (0)
> +#define IP_VS_DBG_SOCKADDR(fam, addr, port) NULL
>  #define IP_VS_DBG(level, msg...)  do {} while (0)
>  #define IP_VS_DBG_RL(msg...)  do {} while (0)
>  #define IP_VS_DBG_PKT(level, af, pp, skb, ofs, msg)	do {} while (0)
> @@ -1244,31 +1255,31 @@ static inline void ip_vs_control_del(struct ip_vs_conn *cp)
>  {
>  	struct ip_vs_conn *ctl_cp = cp->control;
>  	if (!ctl_cp) {
> -		IP_VS_ERR_BUF("request control DEL for uncontrolled: "
> -			      "%s:%d to %s:%d\n",
> -			      IP_VS_DBG_ADDR(cp->af, &cp->caddr),
> -			      ntohs(cp->cport),
> -			      IP_VS_DBG_ADDR(cp->af, &cp->vaddr),
> -			      ntohs(cp->vport));
> +		pr_err("request control DEL for uncontrolled: "
> +		       "%pISp to %pISp\n",

	ip_vs_dbg_addr() used compact form (%pI6c), so it would be
better to use %pISc and %pISpc everywhere in IPVS...

	Also, note that before now port was printed with %d and
ntohs() was used, now port should be in network order, so:

- ntohs() should be removed
- htons() should be added, if missing. At first look, this case
is not present in IPVS, we have only ntohs() usage

Regards

--
Julian Anastasov <ja@ssi.bg>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
