Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED03918F0
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 20:38:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9B6EC20035;
	Sun, 18 Aug 2019 18:38:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E5mkxVZperxU; Sun, 18 Aug 2019 18:38:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3638120449;
	Sun, 18 Aug 2019 18:38:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E64BF1BF406
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 18:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DC74284FF9
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 18:38:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2i_IA7p_gd22 for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 18:38:12 +0000 (UTC)
X-Greylist: delayed 00:06:03 by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 65FB184C78
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 18:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566153487;
 bh=JnSOVaSr8ZMfWjAXv4Mm3x6HT+bnyfuADTLNgCCBU3s=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=c0BA0T94sQU0FFveHYrXJoqihvGgwBHcmRZdKLwAu4Ke6+sDy7IpHuI0YskXN/ZjS
 KCFLSJVKU2ANqhv+uOqc8w53dz8QPu34pOMuGAl84L3xRSl3HQ6NDeWsNswvuCeUeP
 nmnhVb+NbZ947V4YGk67TL0UpePKcre89GOiqhLU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from hsiangkao-HP-ZHAN-66-Pro-G1 ([115.197.242.96]) by mail.gmx.com
 (mrgmx003 [212.227.17.184]) with ESMTPSA (Nemesis) id
 0Lb5GD-1iepNI0Ctd-00kf6J; Sun, 18 Aug 2019 20:31:22 +0200
Date: Mon, 19 Aug 2019 02:31:05 +0800
From: Gao Xiang <hsiangkao@gmx.com>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190818183104.GB1617@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
 <20190818090949.GA30276@kroah.com>
 <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
 <20190818151154.GA32157@mit.edu>
 <1897345637.69314.1566148000847.JavaMail.zimbra@nod.at>
 <20190818174621.GB12940@mit.edu>
 <538856932.69442.1566151228866.JavaMail.zimbra@nod.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <538856932.69442.1566151228866.JavaMail.zimbra@nod.at>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Provags-ID: V03:K1:H+NFCf0wlqRcqkLlPam7c5tw+KObwz8nlqwhdtnkWhSReB61qKl
 F1fRmaMOcEwjjy47KN8sdZ1Nk/+0402ISuwlyXPlwfJQstQFGVihGeyZdqeQJasAygKYq2Z
 xcEfL1e/z/LZK01QHjhFsQhPIhw+Hojr493apR3fT3uYUv6ggEieajZZwysC9q/TQOFjLtk
 Waa/H1RdohVdkujV0ShNw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:y6mqRcqsJSQ=:60iaxuPKkxdEqmsyxxLF11
 0ae9JTebC66WgcyZrHz/u25+LTZzhJB/N4A+4WynLT3XfaBm9jUWxuBk96eIDQ+pDGTqtik4/
 WqLmRCMsR4tEeUTC0RV0WVQVr7jupmEc14ZTTZtCXSKU9IFEH64nxjm3suq0pRXeBZBQFymFH
 2vKdlGBp0i8sG8dPHuU9A82om33OoADlLNBwo8kkT+xKMYJP1BKW6nIf93rYDCuZn4gu1XHyA
 SagxZNDonKlwOzOgK2BVjFN5/SiOQEUWuMFqee9QQYrKtgY9E0D/WlgaJllZohNm+J45Fy9yc
 +ea/odAedfvGpCMYmfHerg9BaYa3bKytSAJPV23QeZn60J/zvzbkWFwVQOH+RvC/zbtg2L7/8
 64bYNSXio2TFKha/8rJtC7I1qEfnymKfB5GV0VxaLfXxF0A7kdxITjfun6wJ1o+xrKKNT0U4z
 gUubQ/fnO2UM8h7EK8HBvKIQ35ZD8u3geSXE0EfRHJj+Shl8x693apMKC6q6H9v8u8BXHTF9G
 TxCV/qjPumi4CBslrJ4b+/SGZBi7CHSOTlGML3fL3Fko1NVOKe8Yrd10kWLwNM5u6N3+vU+l/
 1/+SIgL3wrw+u2GCHBst62i6092LBUiIxwopP+eAuCmVR73sg/XNO1T1danjLXfFJDt5tjDwP
 oeoOzaKRUxVhrJeo4SK6IfXzGZ52C1x07Rw2zgh0TbFQrWdOsqZBIb+//SOxur3ltQbxGKfgT
 PGpRNl/3vthXdBblKi5h/RGvgvw0tUWm9AOCAPP3F1cnxNy/jFAyZmIbGg9y2GzAmlZ6Y0bxY
 /JPPYppQ56dT+bmOBuVK8pn0rZDyu6e1Cer+IW5BKS901qVRh6CpkE+xRsawvp2DZPgsXmyTT
 kf4HoGgx3y5dUxdlLeNWzOkIzyYIlSDBi8ijJmcFRN3HH7RrU82C0ZLRVhF7NDf5ROwjMjWeQ
 RibuaN1LsdVYVJUBjrirD31tiyzNVptS9zIClgm+PeolN0EAAF3oH+P+WYR98hTMlb2x03MUm
 pbnBsw/WNrckwNoUP7dfYMZaQ/XlFw4q0VpAEw1uqVXA4He1OB8gETs6aIouXj/r1+Jl+hp17
 DQxmZE8G9/L+gPhKHj/H9LvSNxlLYRQfolsONMNaddboDAH68f04Q0D9Q==
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
Cc: devel <devel@driverdev.osuosl.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-erofs <linux-erofs@lists.ozlabs.org>, Jan Kara <jack@suse.cz>,
 Darrick <darrick.wong@oracle.com>, torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Dave Chinner <david@fromorbit.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, David Sterba <dsterba@suse.cz>,
 Christoph Hellwig <hch@infradead.org>, Pavel Machek <pavel@denx.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, tytso <tytso@mit.edu>,
 Andrew Morton <akpm@linux-foundation.org>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Richard,

On Sun, Aug 18, 2019 at 08:00:28PM +0200, Richard Weinberger wrote:
> ----- Urspr=FCngliche Mail -----
> > Von: "tytso" <tytso@mit.edu>
> > An: "richard" <richard@nod.at>
> > CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Gao Xiang" <hsi=
angkao@aol.com>, "Jan Kara" <jack@suse.cz>, "Chao
> > Yu" <yuchao0@huawei.com>, "Dave Chinner" <david@fromorbit.com>, "David =
Sterba" <dsterba@suse.cz>, "Miao Xie"
> > <miaoxie@huawei.com>, "devel" <devel@driverdev.osuosl.org>, "Stephen Ro=
thwell" <sfr@canb.auug.org.au>, "Darrick"
> > <darrick.wong@oracle.com>, "Christoph Hellwig" <hch@infradead.org>, "Am=
ir Goldstein" <amir73il@gmail.com>,
> > "linux-erofs" <linux-erofs@lists.ozlabs.org>, "Al Viro" <viro@zeniv.lin=
ux.org.uk>, "Jaegeuk Kim" <jaegeuk@kernel.org>,
> > "linux-kernel" <linux-kernel@vger.kernel.org>, "Li Guifu" <bluce.liguif=
u@huawei.com>, "Fang Wei" <fangwei1@huawei.com>,
> > "Pavel Machek" <pavel@denx.de>, "linux-fsdevel" <linux-fsdevel@vger.ker=
nel.org>, "Andrew Morton"
> > <akpm@linux-foundation.org>, "torvalds" <torvalds@linux-foundation.org>
> > Gesendet: Sonntag, 18. August 2019 19:46:21
> > Betreff: Re: [PATCH] erofs: move erofs out of staging
>
> > On Sun, Aug 18, 2019 at 07:06:40PM +0200, Richard Weinberger wrote:
> >> > So holding a file system like EROFS to a higher standard than say,
> >> > ext4, xfs, or btrfs hardly seems fair.
> >>
> >> Nobody claimed that.
> >
> > Pointing out that erofs has issues in this area when Gao Xiang is
> > asking if erofs can be moved out of staging and join the "official
> > clubhouse" of file systems could certainly be reasonable interpreted
> > as such.  Reporting such vulnerablities are a good thing, and
> > hopefully all file system maintainers will welcome them.  Doing them
> > on a e-mail thread about promoting out of erofs is certainly going to
> > lead to inferences of a double standard.
>
> Well, this was not at all my intention.
> erofs raised my attention and instead of wasting a new thread
> I answered here and reported what I found while looking at it.
> That's all.

Thank you very much, EROFS finally has some real concern
after a quite long time. I will do that but I really want
to upstream for 5.4LTS and hope to get your further report.

Thanks,
Gao Xiang

>
> Thanks,
> //richard
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
