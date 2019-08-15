Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7848F1B6
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 19:14:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7EEEB84499;
	Thu, 15 Aug 2019 17:14:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 28fX14LDtE5z; Thu, 15 Aug 2019 17:14:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5922883773;
	Thu, 15 Aug 2019 17:14:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 793E61BF2C3
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 17:14:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7667D204F3
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 17:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cMb9x4+MkPJV for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 17:14:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sonic309-25.consmr.mail.ir2.yahoo.com
 (sonic309-25.consmr.mail.ir2.yahoo.com [77.238.179.83])
 by silver.osuosl.org (Postfix) with ESMTPS id 65567204E2
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 17:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1565889277; bh=B1CDKmFfj6aDeTiNOiZadWEgT+fWeNQZxcrgAnVsmOs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=c/qezGAkO2x0zLvwNmDTgftEgdMFGXh5dlRs26ixul7HTIvTgP4zXemB7fZ/FK21JbQI/YIG5IdVSNYqZMFAOh2uMnueMxlHZzkQ7m4fIY6mA/snHGrZqU2SvQxf56eDGatPhPVBvAQsuLR4CSFgTzLFgROFih/eZ3nIu4oam7XTYfUqz7ps1uXHcl+/1Eosq+q0OMoZYJE5ak4XrNVXBrSKngmk72YdTeEe/W8leCyC/tBlKTOsgiVfX9C+C8T/g76aQ0+gqF4eGhtzRPbcWp/I5WA+L2QYE/oQ4DiV8kTnQxjzy5uRdnj0+Ji1/dJz3+HFjMU0vU42f4Jb0djiLg==
X-YMail-OSG: UCM0UGEVM1k.ECZKTxS2OqaNxzGHhhZ.pF6bQgH1V5pop2SUDTzFWfBv_5CJXjN
 lmzvdcgsctqscHstS.D3ySu2diMWMVLd1NlS_.QLBfWHJgiZJNUUORUdNzd_1JBEHhl23GXEI9Cr
 SkA.ME94KDhq3JYnKqfxE3lBqx1qsUoxTDPcsaK7CSV9uXRuC_rVeJWQGHFrLSxBUMlfKTCwLK1Q
 SRwutEVv7UDXOJfgMG4dfSMV8ocaxYvcBM__Q2ClXC6IYJVrJ4YY.flrgyQVVBvoCL7eNBwLxq..
 E_cKvKeO5.MMCvhwZl.6UTiEJwVPemSOCL9d9MpkZyzrjgsHgpLwmbmm4TZE9yC7ZV5IgDV.cfqj
 6yNGkLoZdle_xiEedxjALL37oIp1kh0B0AnA.rfKPdq.uwJVIgTQW3DfVqlf6iKhB6uy5RFkNXRD
 IlR3ZLEMzYftGCwgQzomL.99B5RdayKOfbP7ZfTyQFsQfXaxma1dQwsDzs1eJW7MlH6NvdnIH6v0
 bl_66yAONv0NOGPRWVKJ2AUkGWWM5HBJDnqQZDhfj2vYWjXijuZiUOYh218tDbWkiNOWjMiXRv5w
 Nco0gD6FUD9TZNJowGp.fNnHLIWQcSoJvyGArd42Ffch7Cx6LrmtIkLSBB96xZiAkDsIdZSQCSc6
 dkew2LYcnzCsBKEhae3KwsT1sQGkuPPJHLa0xazi.g4qhenO1N9UemS55UuwOF0X0QuNam0ArZVe
 B33q0v8eDbA3TkRAhrspGG0NCt8Bw54BjY6.zQd4f7PTFB76.fPLd7UUF5LElwll.bgQ7L6fQplJ
 OkBMAzSujJwqSD6EqYHLE0a5NAsbBhO9VISE_me1hH17bSBl7PczHs72rzmHz7y4Ct6M2jZQpSB6
 tHWM.i.sGQksU1s5UcKLX3g9nFurGU02ehnJtJH_DkBr5b75yV8_Kwlosn0Z.4gGb_AUmPY7CvEN
 MUT_Hs1lwsxl9CamXd_8IYJNCuCjCl439CIsZhETFo1_kc3Ym_ysi0jzwtdzhSf3nvYG65HHjczN
 02AhHEXoNChDFLMmb35Zbz597Zwjb_yN.f8l32.wP_8j2dFd61e9qAPZ9feIO1mnYh8jMP9.8gtC
 Iuhc0t6IPpsXPvLhXu6mLkFuALJhX9VT7QJomXTsg2k0BTOmxpOPmc4KbWEtgl.qKtaeqJBXu.Lh
 U2PQwdOgTlMhmhp4bmv2LeLI40LC8k3GvxgXsEOLJJHFKc4uiqRbwrVnkKviQ..NTaE3gXl6T8yc
 dtaTogao_6wD2HNBCXC2GNMHbgcUmop8L_06agRcMtFBrCsI-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ir2.yahoo.com with HTTP; Thu, 15 Aug 2019 17:14:37 +0000
Received: by smtp432.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID ed96a2e86c060211f0b97b71e44301c9; 
 Thu, 15 Aug 2019 17:04:32 +0000 (UTC)
Date: Fri, 16 Aug 2019 01:04:14 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH v8 00/24] erofs: promote erofs from staging v8
Message-ID: <20190815170409.GB4958@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190815044155.88483-1-gaoxiang25@huawei.com>
 <20190815090603.GD4938@kroah.com>
 <CAHk-=wjKz7JLd=mj0w2LUiWC2_VOeNWhTTrw1j-i-KyEHH5g5w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wjKz7JLd=mj0w2LUiWC2_VOeNWhTTrw1j-i-KyEHH5g5w@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-erofs@lists.ozlabs.org, Jan Kara <jack@suse.cz>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, Theodore Ts'o <tytso@mit.edu>,
 Christoph Hellwig <hch@infradead.org>, Pavel Machek <pavel@denx.de>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Richard Weinberger <richard@nod.at>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Miao Xie <miaoxie@huawei.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Linus,

On Thu, Aug 15, 2019 at 09:18:12AM -0700, Linus Torvalds wrote:
> On Thu, Aug 15, 2019 at 2:06 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > I know everyone is busy, but given the length this has been in staging,
> > and the constant good progress toward cleaning it all up that has been
> > happening, I want to get this moved out of staging soon.
> 
> Since it doesn't touch anything outside of its own filesystem, I have
> no real objections. We've never had huge problems with odd
> filesystems.
> 
> I read through the patches to look for syntactic stuff (ie very much
> *not* looking at actual code working or not), and had only one
> comment. It's not critical, but it would be nice to do as part of (or
> before) the "get it out of staging".

Thanks for your kind reply!

OK, I will submit a patch later to address your comment and
a pending formal moving patch with a suggestion by Stephen earlier
for Greg as well.

Thanks,
Gao Xiang

> 
>                  Linus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
