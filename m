Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF07B6F6A
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 00:44:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 34B7886132;
	Wed, 18 Sep 2019 22:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XzVkGjFrpRL7; Wed, 18 Sep 2019 22:44:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C2BF86103;
	Wed, 18 Sep 2019 22:44:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B9FC51BF988
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 22:44:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B758B21FAC
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 22:44:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YeS7ejDlcYqw for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 22:44:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic302-22.consmr.mail.gq1.yahoo.com
 (sonic302-22.consmr.mail.gq1.yahoo.com [98.137.68.148])
 by silver.osuosl.org (Postfix) with ESMTPS id 191AD21F69
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 22:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1568846686; bh=qeWM3clNU3uJNRLTBgPkz0oq23aWLhRpnv07nYVU28A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=bNa8B5zMNrhPfbC8eYyT9//9+mIlw8wpsDjvtdrD5IsaAetmdK6fWPrZtrzm2bAvTRreurVTOg1zJhintRJEeGhGf47vgysXD+cHMi6YFI5H3svEZ+LzZ3t/B+BhhXXCD6dsSyMBXPqXlOXnXsGWwgUfjHbb8xZTJ/RwZhLRHSggnCiUys9x599xgfuRiijCOURe8cqnjM+wXNngYp1wYdt2c10q1sZo5cGSeNI9+NUmsoevY+wdeThFE931s6AKBqfEEkC7yyijtl1l7j62A4x5Qx0IGNwrmuGkoni+n77qyBQUBvHL3/9Izymjrb/U7i45oHsYxaZs3IYa5X6QXg==
X-YMail-OSG: 3BwkIqwVM1kY_qtQ.9X84HAiACEg9mMdyPXHUG9kqjWOJZPdJMknKXzAYSlJXE0
 Y4mH79kc1pjtuJCp7t_KRm4yC2bJxjP.WPfoNtFKsoEoJQz4C7nCCk_evUoTHXAZO7_6C_kwLRR9
 qHgv9WjRbd9wy8MXRmltBEBDdgZ1RDbFIh_SE0H3UD_GHy1sNbl2pVNO6UsORsPxHhTBX2eagRpY
 6jQyVlw21bVJYEDQDv4B3Lv0f6BWf15aEv7.It7UvTIwZS11143Fd63_htwV0xXXXhuXqo8iwEMk
 vfBjkHRqfbVMKGIlFHs8BzKRIZ3a7vG3BfHSBZ7536AWJNNHLf3epV3TC41Zf8FevnHBYWRwSZzB
 hC9pGeNY1G3sGNRc0TeTwtWyNcNGag8GR48EX2f7_DecfELx54fKqJOLwHAj44M47mj2n0QBO2LU
 DTziHVxkK48cECb5thoMdilFmaTNPGxES08B.ooGINds.GhmDOcvClqwYXca2sphU8jPOyAz1U9N
 MIi1iUg3xpBxoBIR3499h2vSRwCRQHuqpjvczVW_Hiotl._Ueh9Pkup3t92lwUSgtUxMBVV3dXqP
 QiCIUBIOWIVhbCgXIj_WvF.spJM.WWc2eDbtCArRBSRbIYopUqEr5fIW1HQwSZVedc.4AXOjNvAK
 soT5_uYj6pmBBiWYK12Dweo51K4D0KLi1WL7EkVTv_WC.8KcQ9LByWWo7.B94I6vYo1Wij4h1L.W
 NKo9gaxJRSR1xtqbK0V2dpZBhLpTk2MYxvsCABIJV.gR8IQYY2IUWp_cZULzmQkA_jXIL37NkbIl
 pYqYNGDLqHS9LeEQ11naxMz8Q8ADyxX3zgQlLMmE3NLJ.niuJkkCLP4mkS49dvKQbSEf.C3zeB6M
 l3z2kiqdG5izpKlifH3xYKS7fANnvmNtqFf4PCqLY4Bf1zgVtr95ynhY0SCV.R_3ErfGBDkg9JIE
 hZEqpsfDqa1aLTSLX_ajISNuFI81wBEa7rvtyyHiiDWY6evP5J50lyImALLWctR53cbvAKblysMr
 onRMP4KmMeUzLainlUsu6Suu4kLVJw1qFmIF5vGl8jAUJ5qLyRBtuozE4gX817Y0EngbWOkS.ume
 kYQdeYfB51zXhbDBWXI6XnozeA_ZRzsNFK_HS0sX.a8_7HypdC9S1XxeV.wUfYh9CWr8RgBZ8peb
 owUVeOUdozwoUtuzWX2ENyw43cQPWp4SIe3TUUnOwVAJCVe0j62MlRfceb3K393VWSf9S77DiWQd
 3qBOygO6qKtMhkW7gnrARGwMJTuSO_CVoWdDukbe8PrRmE3LYuvQnkzruGiggw44awI7XXRpGN1P
 oBrtCbUJ.pJUdKljyFTcTrQGYAqXKIHiW3d8rL4Y-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic302.consmr.mail.gq1.yahoo.com with HTTP; Wed, 18 Sep 2019 22:44:46 +0000
Received: by smtp431.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 70c22b09dff901a0cf446ffa2243c519; 
 Wed, 18 Sep 2019 22:44:44 +0000 (UTC)
Date: Thu, 19 Sep 2019 06:44:39 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.4-rc1
Message-ID: <20190918224435.GA25175@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190918114754.GA1899504@kroah.com>
 <20190918182412.GA9924@infradead.org>
 <20190918211123.GA22600@hsiangkao-HP-ZHAN-66-Pro-G1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918211123.GA22600@hsiangkao-HP-ZHAN-66-Pro-G1>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailer: WebService/1.1.14303 hermes Apache-HttpAsyncClient/4.1.4
 (Java/1.8.0_181)
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 devel@linuxdriverproject.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 19, 2019 at 05:11:28AM +0800, Gao Xiang wrote:
> Hi Christoph,
> 
> On Wed, Sep 18, 2019 at 11:24:12AM -0700, Christoph Hellwig wrote:
> > Just as a note of record:  I don't think either file system move
> > is a good idea.  erofs still needs a lot of work, especially in
> > interacting with the mm code like abusing page->mapping.
> 
> I know what you mean, that is a known stuff in the TODO list,
> Z_EROFS_MAPPING_STAGING page->mapping just be used as a temporary
> page mark since page->private is already pointed to another
> structure, It's now be marked as an non-movable and anon pseudo
> mapping and most mm code just skip this case.

Add a word, these pages are all non-LRU and short lifetime temporary
pages (and need to differentiate with other NULL mapping pages [a lot
of different type pages could have this intermediate state]).

Alternate way is to use some page flag but that is what I really
want to avoid this limited resource.

For EROFS, it's widely deployment on each new HUAWEI mobile phones
on the market this year and all old HUAWEI modile phones are still
supported by upgrading to EROFS version and there are many pending
new features for EROFS and a mature fixed-sized output compression
subsystem in the future if more fs users have interested in that
and I think it's good for whole linux ecosystem not just on a single
filesystem upstreaming basis and we will continue working on this area.

Thanks,
Gao Xiang

> 
> I think a better way is to use a real address_space structure for
> page->mapping to point. It's easy to update but I need some time
> to verify. If I am wrong, please point it out...
> 
> Thanks,
> Gao Xiang
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
