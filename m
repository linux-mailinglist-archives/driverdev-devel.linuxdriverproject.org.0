Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FCA913C7
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 02:24:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 18A66857F8;
	Sun, 18 Aug 2019 00:24:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GJXFD_3uyDur; Sun, 18 Aug 2019 00:24:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A29C58577C;
	Sun, 18 Aug 2019 00:24:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE3E71BF2EA
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 00:24:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A8230876D8
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 00:24:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5J0O0DANSEQb for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 00:24:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic316-55.consmr.mail.gq1.yahoo.com
 (sonic316-55.consmr.mail.gq1.yahoo.com [98.137.69.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0B060876C3
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 00:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566087865; bh=GjexilErYddzHprQKMeXPkQTQHS1qRZ0SITxO8/HqxI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=sv3+JhAgIqTJFx83MV51124OmSpp6r07DT90cZDhxPV/ThDDaJVQDQcyzs3pWH46Ap8ZMoZr0OOPXwtlBcAmaeWaqKf6nVFLLEb3N0btCWkcmJkp8uyYDwHjMrLKMT+XyPQJOysQrW1n+4qJH99+T81qjneZZfODL5vTTpjIxTyGqF0whu20y6FnMg7Tscl0wmAYWushnvur2EF9YR9CX1O20JiiDJDZIvyCRAd7DQqD8hPwquJPn0dzDTv3J2u7iubrxJYoX5Uz8nsyXs5eW7dViQVuH1oaw91xddDVRSPeebulSCNqy+eqx5qVjYmTLNIVf1wqCQfQBm/QQaljZg==
X-YMail-OSG: qlyDC3AVM1m.SJj9p4kXifMl4UEMDi5zZFVnzwve4k6rrg1AQGhDOsItxbykIBg
 IfPzBSSIcwhF4CsPrrHpwbBSVz779UCooQ0t_5mqpCpL2qDqJKIawTxZz_3Kb8P_yPhVJVIgVA2g
 vqxkx77BxNs5dGYwuCc_87NAVwx3n1hOpjd1n9ZCUduYFhzu1mp8YLKyfAV0tEhmELzlR4ecRB6C
 6VInYbVNJ6x3vjXYR9TSiqorvFBX1pmurA4BXcQsBOfRotddhZ0Y6GcIsL_SfswYk.4JCJtbc8aU
 _xlg1r3eN4a8AyA5EnD9l7FowL737GRa0gePCSykZ9p_dzg52QGn.UIK14J11c9ON_R4NhNblA2O
 KuPyPYz3QPkaOEHF4neM69GuzTxdmQPt1oQLJs6Pb7z3coOhIlWmUO2gin7Ifc8ku7QR9mhm0soM
 IbdDL8xyrXK4.kJvHn8aBoclUaA8G04OBHyD4jhxSJp5003uV6qBbiHuvy27lw_5jkzLEQy1_ggz
 J8N6AlcwYoZuqbtbL81g9PF7ZAjPjcjQVrtKukVaNdv_yo.AJFeXgbPQW0fDN.V2QEm7WSXESOl2
 WUS9ub.Jehc.HY8hNR5BOTSUJXmlELcTMErPVMuso1S1W26aS.NEGRCM9IgjSM86FZgw3hSuRmQ.
 rs.dV0i8XUN3naOfnoz7wgeRbgcpabVTKA3OCjWyNBs.CX_9tXjRweVfu.BqNWWpVOjrUkW1IND.
 v2u734OEoJZWNW9HgtQA2VH0VW2WSUa7DIHIctemOpp1d65EkcF5LqD4qGwAGPWbZbTXbjqt.4cF
 4LYBKNvgX._lWg2q1OW80m8CKwAQKjod0A6ZUL_gsigI_TpQeoVsF9RVgM2viUXYic46xTku.W3T
 f6NVrNacE6BEkZQIFy6lsy_YXxB5wGBXMQHBVF909yNiMWhH2_gpOCj465tqSoC_nkAxFDIXOhDO
 WYbMBdYm1LxDRSK8y26hvfX7_1bwbTGIXlCMANAOWExjQLKTOIFixsaniXVCRSMItTa7OqM5Cjbl
 Dx.Roops.FoV039YkLMrg2KTIspSxLNHTZz9qj66QWqiavhl900wU0DDVnvx.5lgWj1u6S4dY_3c
 KoYzhzPAdiarBMxjrl308WNEai2VrDlXKSHw066yRw8yxpEAaMtbyt6F1Z2nqq9bLxIH0lf3ILAC
 HXMrKFe8fSOezb5kwvp42UZ54p5cotj9FLGIuf7a8wCmImseLDhRAdTLe25PFW0oJQnKXdkrKP65
 nQES9QGEWn3JdgQ5M61p.kOwNShzopBm.3Q--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.gq1.yahoo.com with HTTP; Sun, 18 Aug 2019 00:24:25 +0000
Received: by smtp401.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID ad9a5bfd260b834e47c5b315d99fbfcd; 
 Sun, 18 Aug 2019 00:04:21 +0000 (UTC)
Date: Sun, 18 Aug 2019 08:04:12 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190818000408.GA20778@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <1746679415.68815.1566076790942.JavaMail.zimbra@nod.at>
 <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1163995781.68824.1566084358245.JavaMail.zimbra@nod.at>
 <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: Jan Kara <jack@suse.cz>, Chao Yu <yuchao0@huawei.com>,
 Dave Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 Miao Xie <miaoxie@huawei.com>, devel <devel@driverdev.osuosl.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Darrick <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 linux-erofs <linux-erofs@lists.ozlabs.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, tytso <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Pavel Machek <pavel@denx.de>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 18, 2019 at 07:38:47AM +0800, Gao Xiang wrote:
> Hi Richard,
> 
> On Sun, Aug 18, 2019 at 01:25:58AM +0200, Richard Weinberger wrote:

[]

> > 
> > While digging a little into the code I noticed that you have very few
> > checks of the on-disk data.
> > For example ->u.i_blkaddr. I gave it a try and created a
> > malformed filesystem where u.i_blkaddr is 0xdeadbeef, it causes the kernel
> > to loop forever around erofs_read_raw_page().
> 
> I don't fuzz all the on-disk fields for EROFS, I will do later..
> You can see many in-kernel filesystems are still hardening the related
> stuff. Anyway, I will dig into this field you mentioned recently, but
> I think it can be fixed easily later.

...I take a simple try with the following erofs-utils diff and
a directory containing enwik9 only, with the latest kernel (5.3-rc)
and command line is
mkfs/mkfs.erofs -d9 enwik9.img testdir.

diff --git a/lib/inode.c b/lib/inode.c
index 581f263..2540338 100644
--- a/lib/inode.c
+++ b/lib/inode.c
@@ -388,8 +388,7 @@ static bool erofs_bh_flush_write_inode(struct erofs_buffer_head *bh)
 			v1.i_u.compressed_blocks =
 				cpu_to_le32(inode->u.i_blocks);
 		else
-			v1.i_u.raw_blkaddr =
-				cpu_to_le32(inode->u.i_blkaddr);
+			v1.i_u.raw_blkaddr = 0xdeadbeef;
 		break;
 	}

I tested the corrupted image with looped device and real blockdevice
by dd, and it seems fine....
[36283.012381] erofs: initializing erofs 1.0
[36283.012510] erofs: successfully to initialize erofs
[36283.012975] erofs: read_super, device -> /dev/loop17
[36283.012976] erofs: options -> (null)
[36283.012983] erofs: root inode @ nid 36
[36283.012995] erofs: mounted on /dev/loop17 with opts: (null).
[36297.354090] attempt to access beyond end of device
[36297.354098] loop17: rw=0, want=29887428984, limit=1953128
[36297.354107] attempt to access beyond end of device
[36297.354109] loop17: rw=0, want=29887428480, limit=1953128
[36301.827234] attempt to access beyond end of device
[36301.827243] loop17: rw=0, want=29887428480, limit=1953128
[36371.426889] erofs: unmounted for /dev/loop17
[36518.156114] erofs: read_super, device -> /dev/nvme0n1p4
[36518.156115] erofs: options -> (null)
[36518.156260] erofs: root inode @ nid 36
[36518.156384] erofs: mounted on /dev/nvme0n1p4 with opts: (null).
[36522.818884] attempt to access beyond end of device
[36522.818889] nvme0n1p4: rw=0, want=29887428984, limit=62781440
[36522.818895] attempt to access beyond end of device
[36522.818896] nvme0n1p4: rw=0, want=29887428480, limit=62781440
[36524.072018] attempt to access beyond end of device
[36524.072028] nvme0n1p4: rw=0, want=29887428480, limit=62781440

Could you give me more hints how to reproduce that? and I will
dig into more maybe it needs more conditions...

Thanks,
Gao Xiang

> 
> Thanks,
> Gao Xiang 
> 
> > 
> > Thanks,
> > //richard
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
