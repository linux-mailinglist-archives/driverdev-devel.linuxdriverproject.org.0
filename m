Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D7AAEB46
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 15:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 910F420457;
	Tue, 10 Sep 2019 13:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dWH2sBdD7wNP; Tue, 10 Sep 2019 13:18:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6ED0C20415;
	Tue, 10 Sep 2019 13:18:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 160111BF97F
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 13:18:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1314620415
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 13:18:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i-E5LqPTtiIo for <devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 13:18:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 5788C1FDFB
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 13:18:47 +0000 (UTC)
Received: from mr4.cc.vt.edu (mr4.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8300:0:7b:e2b1:6a29])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x8ADIkJU020713
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 09:18:46 -0400
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x8ADIfUP018326
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 09:18:46 -0400
Received: by mail-qk1-f200.google.com with SMTP id p6so20675614qkk.6
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 06:18:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=7kNO9uDNvugTv3H3koO6iBR61aeWq1IakC0dWAwZ414=;
 b=RAfrCbr2CtZoFZOBThy8rtU0gZ8M15sBAlh4q/58nEQAySj6fksYdtTpYuXvM65lHo
 Iob/Uz3PIa6fnrfwNGdDVk5Hoc1tox3PwM4nP5thAe//TH5KuDP7fDAJe60VjT3DF9k1
 5YchCPVtp+nMT7AisXg8OzPxWNLM4zmSDajFJDJJV4A1lbxlSz6a5rSobDhM5JpClDQy
 UDMm6m0wjgT7Dkx3jvUtusKY6Zm1U2unT41ym9ifxZjJGiq3Tlom0tTzN7MU1oXlZffw
 FbQB34+WBSsBo0J3/fespCptCuwjRh3DifAqabhaUAuWQKWhT/a8Ds1pKef7bKP5uliR
 NKuQ==
X-Gm-Message-State: APjAAAWJ98EcrZAwImFBv8cXTbOL8EMK9YsK8r+IGve/V+xAXaUG0fo/
 gsWsoodnlvpKtGBOioCrIjJ6vagRbv9gi16K+2mCnYFQrvbqih63F7zQ03jytrnGdzkGdU7SpX5
 hBzHM3Ed+uDyVlWcy01cGMVNobmIRXJ+x
X-Received: by 2002:a37:c0f:: with SMTP id 15mr23232184qkm.73.1568121520894;
 Tue, 10 Sep 2019 06:18:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyHLmfoD+Kv5Ihhcunz/PPRO8HiNM4sdOJhK03/Lv6eRrYrNyPTStg6jFzCIG8lLRtsiz/hKA==
X-Received: by 2002:a37:c0f:: with SMTP id 15mr23232151qkm.73.1568121520625;
 Tue, 10 Sep 2019 06:18:40 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::359])
 by smtp.gmail.com with ESMTPSA id g45sm2907548qtc.9.2019.09.10.06.18.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 06:18:39 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: staging: exfat: issue with FFS_MEDIAERR error return assignment
In-Reply-To: <20190910130934.GE15977@kadam>
References: <c569b04c-2959-c8eb-0d38-628e8c5ff7ac@canonical.com>
 <20190910124443.GD15977@kadam>
 <aefa4806-af3c-1757-59c2-72e7d1663d66@canonical.com>
 <20190910130934.GE15977@kadam>
Mime-Version: 1.0
Date: Tue, 10 Sep 2019 09:18:38 -0400
Message-ID: <1146681.1568121518@turing-police>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Colin Ian King <colin.king@canonical.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: multipart/mixed; boundary="===============6330645557359815085=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============6330645557359815085==
Content-Type: multipart/signed; boundary="==_Exmh_1568121518_4251P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1568121518_4251P
Content-Type: text/plain; charset=us-ascii

On Tue, 10 Sep 2019 16:09:35 +0300, Dan Carpenter said:
> On Tue, Sep 10, 2019 at 01:58:35PM +0100, Colin Ian King wrote:
> > On 10/09/2019 13:44, Dan Carpenter wrote:
> > > On Fri, Aug 30, 2019 at 07:38:00PM +0100, Colin Ian King wrote:
> > >> Hi,
> > >>
> > >> Static analysis on exfat with Coverity has picked up an assignment of
> > >> FFS_MEDIAERR that gets over-written:
> > >>
> > >>
> > >> 1750        if (is_dir) {
> > >> 1751                if ((fid->dir.dir == p_fs->root_dir) &&
> > >> 1752                    (fid->entry == -1)) {
> > >> 1753                        if (p_fs->dev_ejected)
> > >
> > > Idealy we would have both a filename and a function name but this email
> > > doesn't have either so no one knows what code you are talking about.  :P
> >
> > Oops, my bad.
> >
> > drivers/staging/exfat/exfat_super.c ffsWriteStat()
>
> Yes, your solution is correct.

Actually, you can skip the else, because we initialized 'ret' at the start of the function.

The *bigger* issue - what should 'ret' be if dev_ejected is *false*?

--==_Exmh_1568121518_4251P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXXeirQdmEQWDXROgAQL5wA/+PPHOGEmDV504BFRLn9srgqIa56tfpmot
Ja0n16HXiCIc/z1N2QQ1yTCN1HR387EPagxgMoiIcNV4rlJ8vKFDXzxg8BA4xUKK
8ikDLD0pwq5jR+ghYKYrjHxMs1OClbH0dUvlzra7TOOJpdaPL91MezH4fhJH5Ybj
MPjwNb+MjNLcC5rEYO6BY4TMVuBUES1w4BgQr0cpsvFZWfLoOHs6l8jHyHmnxJ8O
GeE0yMX4THplzc7pWAbyYnm08kXBc4spMcziXRWfJtNtg8JjTYBNC1jYAH41THGO
zf0Bp3n1BtdrIr93000EsmQNrdXTSoogIisJ6tg+5GauE1WbJAUSLuyWwqLKSQk/
gWd7aWO1COCNJS7887iKimSxntiCH4ExjoZigDStvWSMprqCPDefuSefOlkWU53Q
d6TLu3zqicuqiIqp/z9V+kkf3TUMedLHPosvzbhC2WQaHr5MiaBUjDDx8n4zJ+JS
vJyHuWeqFuoGxwdg8viDrPATRJOkgQFPGupGyfVZGQpTxBYu9Ooyl3XgNxtJJIbz
w6OOrrJm9PS9bllSVlEbKHQtiRi8eM2R4gNQQHow5klY6FNIV39dUiQHXwf+OAlp
2GQ63Cv6WLgJakMBRzHcpfpUVayLn2WozSD5TEJx8VsIwqTU2rswLtKpSF47j1hu
y21iQgn12Q8=
=gwNw
-----END PGP SIGNATURE-----

--==_Exmh_1568121518_4251P--

--===============6330645557359815085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6330645557359815085==--
