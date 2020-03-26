Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2641F194487
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 17:44:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 869092635C;
	Thu, 26 Mar 2020 16:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HneSt+VV5iSg; Thu, 26 Mar 2020 16:44:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4D3562153D;
	Thu, 26 Mar 2020 16:44:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66ECB1BF289
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 16:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 60D1488430
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 16:44:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K45RWDvnWtYn for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 16:44:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CA5B088425
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 16:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585241001;
 bh=UVbrUb+k2mZ8gQQp531jOp6OyS4N5ogYYHX6KJL1YCU=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=blxVZnnmMDa/b8P3caKBpshrtPnRziu3jzDhlTkuXpnrj+kNY0/4RZzksYDbh7hnw
 fLII8RoVZM59hxxC7Aj7CGOJQjjSYqWOqBatgQZzUauZKcb5LVFJH3ZIsIPtRRWNqP
 PBfb3GxDKCKxu36ivhmfFT6LVVOW/g3jq67uacfI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1N1wpt-1jOCXY1wrp-012Jls; Thu, 26
 Mar 2020 17:43:21 +0100
Date: Thu, 26 Mar 2020 17:43:05 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: vt6656: Use BIT() macro instead of hex value
Message-ID: <20200326164304.GA3629@ubuntu>
References: <20200320171056.7841-1-oscar.carter@gmx.com>
 <20200323073518.GK4650@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323073518.GK4650@kadam>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:ISIX9ycQftVxIKBz3LnMcYJeXp51Z1jCaxo7XqwvIjHSJSTg4nM
 JHlz+vlVy60PwwLMtbHqQ73yjNPQcFb0B6WkzOj35hsEKcFQ/TGpipUFZFZI4kcjBBgamOm
 W6yGr/ypA+RtBgjIHDOsjMXSIy4D/Ldb9ZY6wYMLUdbkpbnNbtgs+YRD5ZaxiU4KIcftjfo
 zlA5IuYuFS7vx2G/IOXeQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:EXGQy6V7unU=:tkPDTF0Nvd+ujPunjlx3+r
 ONWMxR290GHbd7nj23A7c0sE5BxHQ2u0WEpXVey+UeIvPpfUVX671q+MFYlQB+Xh/VlJIOTMA
 GFI8OoPh1l4jL2+AqaOI3REcvrpKcGMNgRmNjGT9AkzDKEYabzMZIyqBmpMFtPEZZnL3wbJJ1
 uYIItOH8DcyUNX1rrOCO1soO5V8tUNJVtgfrXtUrIwt7PKkyuooaKcV7T93sM5XWB+4QGTJPA
 km8FuHEJJbEegto2Jtuw80yltvM2YYCewUlXeU0CJH2onnJb4PW03zoihfYQ9ASqDb2QBw9tj
 R0ALfO+fl6WM5eaiCO5sLXjUCNEor12FR5A29b1yfn94qJwj7GvU+E3bED9brSQ2q0shHetVj
 ZvIGLTv/bc5nwGTCBpE6pKRyWu4pde6j9ZafRryg1BgrhXNF6MmyRn/m42aGJvOuUZBJDsn5T
 qRTMPWi0CsHQrgoZswd0Of2XitvMlpoBUQnI5dPclaOzk+Xsz8yfH9mn9Ut6i2dGTFPnwq3bE
 lIG/KakrujCm5ylI9EVXcGmKu7aBH9d+8Fnmp4GVDUVM7eGORYBZ40/Q/O5+Ls5k3by7QoMVQ
 JSi4VnbaY6L1qE9sqdEIjUdCH6CHnNjJ4cgEX4POSSPhqKIJvucAeI6h04hVQwnHf0QgdQtfb
 WepzEcAPBGGGwckl/ezimRNP6UrwWpKJlvkB9Ldddeyd3ixbl0F2lSB/H+gTLb/qu2vJipc0Z
 dY5V9kcHmkOqUA3/aaaoyWc/pxkpQfChGEb1tbIvL++QjpWq6oWYOe7ldc4WsK6l4pgcYsyFR
 2/1Ogtb+NJP6nFsL6temHUyoZNq6OzQtRl8PTKK/bH+ki8v1Zq99IimJiGOOgx21/wSeZxEEL
 8unoondSozi5sjqrU6Ex3kR4ww9Cw5HIR/LyrpilYdLcg66K5xjxZUEVDFef+55Cd8ZtSmHI7
 YDamsQdrCNRX/vLwh8FCuHOzvyumN63Ql2SHvhGuhR/Rq1PKld8mMV/mv+XZxKGw5dyJYRILg
 jtQts1oz132BK8mFwjvHnJINdwxHCEH688kgSGo9JE0pXUJ6l4CrH3EY99yjJ28O0nMdRtE0D
 FxQPtzr5aHVnaWNO/JEW1+l+a5kqlzvSEi4GQ6UywDsjCXGaZ19HgRkAQQUQqE1g5C1tiswy5
 wAgOQcOGgdIFEBB/2YLq+MxGvz+WJQE/mkQ4PvAhRWt6S5/bdb71kvkljU6QM+FM6ivIS1di3
 D+4e4Eegi7Eolq97Y
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mukesh Ojha <mojha@codeaurora.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Ojaswin Mujoo <ojaswin25111998@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 23, 2020 at 10:35:18AM +0300, Dan Carpenter wrote:
> On Fri, Mar 20, 2020 at 06:10:56PM +0100, Oscar Carter wrote:
> > -#define RSR_ADDRBROAD       0x80
> > -#define RSR_ADDRMULTI       0x40
> > +#define RSR_ADDRBROAD       BIT(7)
> > +#define RSR_ADDRMULTI       BIT(6)
> >  #define RSR_ADDRUNI         0x00
> > -#define RSR_IVLDTYP         0x20        /* invalid packet type */
> > -#define RSR_IVLDLEN         0x10        /* invalid len (> 2312 byte) */
> > -#define RSR_BSSIDOK         0x08
> > -#define RSR_CRCOK           0x04
> > -#define RSR_BCNSSIDOK       0x02
> > -#define RSR_ADDROK          0x01
> > +#define RSR_IVLDTYP         BIT(5)	/* invalid packet type */
> > +#define RSR_IVLDLEN         BIT(4)	/* invalid len (> 2312 byte) */
> > +#define RSR_BSSIDOK         BIT(3)
> > +#define RSR_CRCOK           BIT(2)
> > +#define RSR_BCNSSIDOK       BIT(1)
> > +#define RSR_ADDROK          BIT(0)
>
> I like these ones because I do think the new version is more clear
> now.
>
> >  /* Bits in the EnhanceCFG_0 register */
> >  #define EnCFG_BBType_a		0x00
> > -#define EnCFG_BBType_b		0x01
> > -#define EnCFG_BBType_g		0x02
> > -#define EnCFG_BBType_MASK	0x03
> > -#define EnCFG_ProtectMd		0x20
> > +#define EnCFG_BBType_b		BIT(0)
> > +#define EnCFG_BBType_g		BIT(1)
> > +#define EnCFG_BBType_MASK	(BIT(0) | BIT(1))
> > +#define EnCFG_ProtectMd		BIT(5)
>
> Probably EnCFG_BBType_MASK should be defined using the other defines.
>
> #define EnCFG_BBType_MASK (EnCFG_BBType_b | EnCFG_BBType_g)
>
> Otherwise it looks good.  Can you change that one thing and then add
> my Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
>
Ok, i will make this change and i will send and incremental patch with the
"Fixes:" tag due to the this patch has already been added to the staging-next
branch of the greg staging tree.

> regards,
> dan carpenter
>
thanks,

oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
