Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2634117585B
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 11:30:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 265AD20458;
	Mon,  2 Mar 2020 10:30:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kQ3sqEb4pfEX; Mon,  2 Mar 2020 10:30:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B70312040D;
	Mon,  2 Mar 2020 10:30:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2FF6B1BF282
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 10:30:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 298C98750A
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 10:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yc4uwj+68IeL for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 10:30:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 70F7C874C5
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 10:30:03 +0000 (UTC)
Received: from mr4.cc.vt.edu (mr4.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8300:0:7b:e2b1:6a29])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id 022AU2Ss021047
 for <devel@driverdev.osuosl.org>; Mon, 2 Mar 2020 05:30:02 -0500
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id 022ATvjU014286
 for <devel@driverdev.osuosl.org>; Mon, 2 Mar 2020 05:30:02 -0500
Received: by mail-qk1-f200.google.com with SMTP id q123so8570395qkb.1
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 02:30:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=/VcLffZUTgvTWC8ZFO3N6mDeTTtIIDh0TAgvcx3iXEw=;
 b=KkBpfIU3iAA+Q/eUh1ftXeSCQPJoC4LSm9yoYllw3bsA6Bl7fwVFcqQd+jgghEVcZu
 1/Le1IDiV9AqHVmEmluY84IEHpMLLSxio8v7b64Qj1B1txadQXC9MrQJ2C59m4APieVn
 57B/v4HzueugvQtfP0UjS2iPwezM3Bg5CM2v9yUAQAkMrYVbmu7jWxT2TR6WjvLVeSA9
 vYZvxshMlfLzMNpJmMvHruQxAFqRl/8WzTIWuRdvnmpmOwwbSt0b/wIvU6MRXMTar653
 4rkSE49KDHyLdwLOuu8S+x1C3Ui8X1p72EMsPbDZz79nNWG5+pzuja12/BijP3ODQoCI
 n44Q==
X-Gm-Message-State: APjAAAXl7AMn9K3ssHIPmdSpxxUIRIgZLBQDSbaerE3v+Fv0daJp07C+
 ZjaFaT76XAHl6Uz6teoch7nv9wqWVDTyNFl1coqEGiYtfIah1FMPxs+HpDuEI7L4upYa1dOFtQM
 oAIEU3iFY12iYt8G4eFbbtugKjVX4+6lv
X-Received: by 2002:a37:4e53:: with SMTP id c80mr14345724qkb.58.1583144996946; 
 Mon, 02 Mar 2020 02:29:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqwBh6WXMWHNRoxL92FxaSm7tZWkWljn+/lubfFhH1jeDvkVwJTYHB9DmVs0hkAFcj5IVD9Bog==
X-Received: by 2002:a37:4e53:: with SMTP id c80mr14345713qkb.58.1583144996622; 
 Mon, 02 Mar 2020 02:29:56 -0800 (PST)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id j17sm10248504qth.27.2020.03.02.02.29.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 02:29:54 -0800 (PST)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
Subject: Re: [PATCH 1/2] staging: exfat: clean up d_entry rebuilding.
In-Reply-To: <20200302095716.64155-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
References: <20200302095716.64155-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
Mime-Version: 1.0
Date: Mon, 02 Mar 2020 05:29:54 -0500
Message-ID: <240472.1583144994@turing-police>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 motai.hirotaka@aj.mitsubishielectric.co.jp, linux-kernel@vger.kernel.org,
 Mori.Takahiro@ab.MitsubishiElectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5207231269871235597=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============5207231269871235597==
Content-Type: multipart/signed; boundary="==_Exmh_1583144993_2391P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1583144993_2391P
Content-Type: text/plain; charset=us-ascii

On Mon, 02 Mar 2020 18:57:15 +0900, Tetsuhiro Kohada said:
> Clean up d_entry rebuilding in exfat_rename_file() and move_file().
>
> -Replace memcpy of d_entry with structure copy.

Those look OK.

> -Change to use the value already stored in fid.

> -		if (exfat_get_entry_type(epnew) == TYPE_FILE) {

> +		if (fid->type == TYPE_FILE) {

Are you sure this is OK to do? exfat_get_entry_type() does a lot of
mapping between values, using a file_dentry_t->type, while
fid->type is a file_id_t->type. and at first read it's not obvious to me whether
fid->type is guaranteed to have the correct value already.

(The abundant use of 0xNN constants in exfat_get_entry_type()  doesn't
inspire confidence that it's looking at what you think it's looking at...)



--==_Exmh_1583144993_2391P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXlzgIQdmEQWDXROgAQI58g/8DOieHjL/SZ7yeem2t4q7TX4M9CzzWBEA
gCgEpSqWrxEfRPn4OfLS/S6CMQtDPrdv8mDqvmNIRa0S27G+kvvCdOVbIYDnDIHD
uqUmHKhPoUdTH+6k4XXErNBO4hG0NlpFAAVEpyY0x3Yo8zK5a6kW9NroYknqHq0g
/zafLt+WTiwU4InxRznidC4UvQ9Dvi9hMUnEzziYuR/E11ruzpQjfc8gcCkRawh0
F2bgfjwXhAFdyXGhkJdcfeNjXRMgFUPy4a0fVK32uxSo3kfYJYX0cSzSspkCoZm2
bIWbR0pg/Lx/AjH1V5JiTK+EQixeC0ujAXmbzGVT2H16cWSMqnFbmVVjRgSBY0fI
Y/N8HHyLxUx5u87b6B97wvNZiExkDID38Br05uFuOIasOMOMs3fE3mpJ7/J/FRFd
dUXKZJ6+wni8X4kZVHTleUuZVtQK0hSTZBj3wOL7prAn9uJiCP3b7t6MdfCOegV6
VcKJyhLvu6LmByPunjU75UTTmWj3dMGYdYDFEDD+jfHBXMh0AX54rHwy4jO0BwU2
/X+YrqpbOWL8C7+1E//vJq00X+CNyNG98iJ1QJWJV7EOUrUTnnLUa11+DLc9CUtB
R6r7VF469EJ7MfZG8L0keg5eLSNUQL2H9I8FU1id0xrHxJ7HQtH9lz6Dav1+Bnj4
bOOVWDTwOt8=
=DpqH
-----END PGP SIGNATURE-----

--==_Exmh_1583144993_2391P--

--===============5207231269871235597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5207231269871235597==--
