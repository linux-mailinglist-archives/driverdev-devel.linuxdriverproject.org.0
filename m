Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D7419AF1A
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Apr 2020 17:52:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C142885A8;
	Wed,  1 Apr 2020 15:52:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JE2joG2xZvuq; Wed,  1 Apr 2020 15:52:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC8FE883B7;
	Wed,  1 Apr 2020 15:52:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 441011BF57C
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 15:52:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3F63986C63
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 15:52:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5l-LSYEJi97V for <devel@linuxdriverproject.org>;
 Wed,  1 Apr 2020 15:52:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CE89885F19
 for <devel@driverdev.osuosl.org>; Wed,  1 Apr 2020 15:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585756335;
 bh=3eq5ME+gVr4M1P00oIT+Rc42Nsmquyg/D1KhXARjebc=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=J8/Y50VNM29aa4oWf6QVSkMPQ5QldSqWvvWeCCiE8oYn8Qo9Ne/tu8VYbo8F2+pIp
 ARnjLv4x73vE+/4CSfBtvRcBPhbbnVlRD0wyNB9eA+GY/V89bjEhX5tX8/IGTz56zn
 gy7/+1Sp5OFpjjiA/16bloA52QB0ACOAlDXHHnu4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MAOJP-1jVSI01FWt-00BxKb; Wed, 01
 Apr 2020 17:52:15 +0200
Date: Wed, 1 Apr 2020 17:52:13 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: vt6656: Define EnCFG_BBType_MASK as OR between
 previous defines
Message-ID: <20200401155212.GB3109@ubuntu>
References: <20200327165802.8445-1-oscar.carter@gmx.com>
 <20200330122714.GA113453@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330122714.GA113453@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:dB1hbiDlJbRfAbWMS4n1nBjXSFgq/QwnCi6DMfpH0RNAsTOgxgH
 XCWhs4ZSr/MwKu4I/nOOSHNtvdzH+iYqOmQQnYlAXl0quY/fjEIZQSCP71kySq2b0hlMGRB
 Sv3JDtW4TPXt4YhaozzHcbnT+315pcpqcKogNwF+PjrX+6rLsHweLHH5BiTJFZQ9UaTwt+0
 gvM8cYc6Mi8bfkQ2AYZBQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:7uJTvMvfw4I=:avgJoEJvY6zy5SsYKojpA1
 ChGOVZmebOVws/0GN+ZZB5Xvt3AQ6iQzbNxs4D/IbELyI+ZiRAD7MkjmyogUhcq0e5CMRdmKC
 61DcSLgnJ6rtfW6k7Oz4PQ/a+PDRJbqban2SWGv9Ol9EaHfx8xWyCj+hY7UEPo6gXfNnKFJEc
 t9czfb+F62AUgW+cwljyaTjIcdzVcANx246pc/8MqFIk1cm/JJcqHDsh/hPisMJjDYwvk78Nr
 QcB8bM2EV0X5vIwPTyRNWxd0c2EGn8wpwYTJAjgYAWcsS1eqmzO2dlfIJjFir0Uxm5Wd52Too
 lDMdfI7TFYuvqtox4VmtNQk705laPv4wz60cB4l5UDoxWIhLNMjtv6sWwW66n4OT35VoakWY4
 3+n2MBwoiWONfEzPoqq/viKjiS1JDqF9MNOMpB+52e0OIMT/8aR9khXcbHh3DHWu4nekZPSuS
 bHGdc+Ld9L88qEtMFu9dqRu8V7lt0nMI4IiSCEBNj51OjOlT+VTccgzc2939GLJKn11SpSt0D
 P7CzMqsvQF75mqKdh4v0JLsj6B2Gp1t/2KDpgiXPkbzORY82pYC5zPfjAa2JzQj3kADzIM/u9
 UjIch6GPUL8yU6itbKykrBeDVD91lJPKn63GU9K0PMiVb00IODoIPeGh03flFmN/XdCeAyQnB
 B2YC/QGdC9tm042h1q/6HGH5yWkxDmTo2avlkfumVLpgfgl9HRxa6xVU0+Mp5zifbjNVp9uA1
 rml0ipCLbhkAZKnw+UDkErwIarxnJtgXijHflnNs0vsZkSHz4fJwtjHG5iYOluD/QtBR94gYW
 Hg887eXVgwnkXT6THYbgw/2OCQ/uXDipKTvzlyL5q9NmlN8szm60a14zXv7ISfgomU51gDf5X
 P5n1TTxtJOsvdgQGuskdBbIFd2uYKbmLMcgPPUqIBoiP0lkEXo8nn0kLMlksv4gdxELo7A42k
 R4AowL2634Z1CDQJfImXUwlNMtODMw4rBppxvioGWCuugSY85o1AsAAqYd/qPGHP1qfx0Adxx
 50pzKBInILBL71WDmI7/D284WwuQA5oQM7yrPUTUqgMuSQHdSQZZFZAtfgE3R06Hx1V2WcWpL
 dyYjmytQRFFL/0OIz0n2H+xHK7108GUBiBFPSkjH324zskzAbe6owwFjKFja7GysStvewr06E
 Hygc+/8GyfM75hitsiEO8a5FX+sl2LFIjf629kbbP0wEm8ZS8JY9QSAbGl98C7ETxK/0cnJZq
 S1x5i87Tpafkt1EZf
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
 Forest Bond <forest@alittletooquiet.net>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 30, 2020 at 02:27:14PM +0200, Greg Kroah-Hartman wrote:
> On Fri, Mar 27, 2020 at 05:58:02PM +0100, Oscar Carter wrote:
> > Define the EnCFG_BBType_MASK bit as an OR operation between two previous
> > defines instead of using the OR between two new BIT macros. Thus, the
> > code is more clear.
> >
> > Fixes: a74081b44291 ("staging: vt6656: Use BIT() macro instead of hex value")
> > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >  drivers/staging/vt6656/mac.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/vt6656/mac.h b/drivers/staging/vt6656/mac.h
> > index c532b27de37f..b01d9ee8677e 100644
> > --- a/drivers/staging/vt6656/mac.h
> > +++ b/drivers/staging/vt6656/mac.h
> > @@ -177,7 +177,7 @@
> >  #define EnCFG_BBType_a		0x00
> >  #define EnCFG_BBType_b		BIT(0)
> >  #define EnCFG_BBType_g		BIT(1)
> > -#define EnCFG_BBType_MASK	(BIT(0) | BIT(1))
> > +#define EnCFG_BBType_MASK	(EnCFG_BBType_b | EnCFG_BBType_g)
>
> This does not "fix" anything, like your "Fixes:" tag implies.  It just
> cleans up the code some more.  Only use Fixes: if it actually fixes a
> problem introduced by a previous patch.
>
Ok, thanks for the explanation.

> Can you remove that line and resend?
>
Yes, I will remove that line, I will create a new version of this patch and I
will resend it.

> thanks.
>
> greg k-h

Thanks,
oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
