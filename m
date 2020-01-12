Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D2513849A
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Jan 2020 03:39:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4873085644;
	Sun, 12 Jan 2020 02:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cWADG2juZ5FV; Sun, 12 Jan 2020 02:39:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3808C857B0;
	Sun, 12 Jan 2020 02:39:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 941111BF44C
 for <devel@linuxdriverproject.org>; Sun, 12 Jan 2020 02:39:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A63585640
 for <devel@linuxdriverproject.org>; Sun, 12 Jan 2020 02:39:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RI0gb2w0pp3q for <devel@linuxdriverproject.org>;
 Sun, 12 Jan 2020 02:39:53 +0000 (UTC)
X-Greylist: delayed 00:20:03 by SQLgrey-1.7.6
Received: from sonic301-12.consmr.mail.ne1.yahoo.com
 (sonic301-12.consmr.mail.ne1.yahoo.com [66.163.184.245])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1C00C851C2
 for <devel@driverdev.osuosl.org>; Sun, 12 Jan 2020 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1578796792; bh=3gwbdpD6fpTnU3AIhQs1dw9/oeXqxu71NA+1nQpVq+I=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=VsN7hrAc2GJrEw2PYSbR01fqNB0kzrczfYgdVA3+2IBgEW09VOrKxSaPrzTaUfJ4zEsJrUAlonN6kS8MeNZtwAmqXXSSj8hrThdBPvtkTWWujXhwK7taE+VFlQNB4XH4A+nWOBAq+e+3dXPDvW4LTyPpdvpqsmZ75/JFPE5fk+PiAQq60I2643Pc5UnYxjF7YLUWf2mnE6P0gCwu/94k82hrvqn7Fk7mq0JB7Sc+3ckY3u8//vw7tI5pgSL+ycbA7po6/rDBMFrkKqAtvDbj08kxEYgdl/Zr3EFm9lMn65hs86rCx9Dr7OvBayMrWZlMvvkWa/3Fi8jQnZbLqOh5Ow==
X-YMail-OSG: R.ICC_AVM1l8G25f4oXoVMYWmw3nI48pMZd.O8v383czAIhXYE1bYctqYT39MxW
 q9xLKFSVGdtJ3UMKeKCDGFv9BVwlm3V3_14nyRNDKqMJXilLAIVjFyhlEz7ExUP1KjNNIppeSfFp
 LwTMaFK6_q2Ql8TuUovTjjLtI3JuvZe4d8clJLB8k5VwQcYvLsG_IE289dRP6.Di.8dEo99Rd.Ro
 sYDYXk9Cl9c3fvLxFywz.FdIplhxDEdnExbV1eXfLS3t_8aMfOoafF54L5jDPIiwTiHNQw1w2gAD
 uxC2nMqtlCtpKNXdxnxoMQauGKumckWakblULwOJysxZFYV6thRdh7wTSl6V4egU4VmsmW6NS5Um
 hsbjmYpEytkSOVvXcaFk6U297mTTPjW8n9wqBaTegLUP20lSCkJKTfhOeg_0hGiv8NK_Xqhpb5cn
 hs77dHOL7rlgbioawU84xNStmkSRUkt4qQOwk_aav.i5v9xCjV3VWAaoLtqXj2uPcyvVlIi8c004
 JIUkrr3PlxebmkaOwvAv.ND.WC2NGOzf2jnkx0Z_Y4Y9eXqJb7xIpXqTzATv2o1qMWDezTa207BR
 xTTZSF7YGlMP9vCw4_PUKc3Cv7MDHjkcQHsVVCz_ikxkwECGu__v4EGjFlJPVivks9qpzNjsrOS3
 RGv1daOs6A5YFwTZGpJmxVulF1Yl2ce4sJKhbW45Rye6srurN3JiATKZDqL4OV8RRCUTvbgWQM7D
 YYdN_sOSXFVywwEILs6IfY3UANbsUA0bv.1opwu9o3MILJfbCNtDsBqebYb48naBVwFguner35c9
 mlyWNVLjxQ3.JAOiBICed08y_X26CLqujnjBIG8p.Dn12hnqPHljZv4Ey5Tgoja8SBRnc.maVtC2
 rIoh3WU74gEyIKX8UIFiaoKCskM2vEpvEz9EsbfSAwhsgQNWwXT4OMr3UrnTCWo7zaNZ0euOD6qH
 2aCu1.N3AuKNPOWA6nwsZG8keWsgsXKPBOey18TGoiqTue3NkpVcekNtSnha6GAZhrlHTvNEaWNv
 n7JogWchb3mOUSKX0ThQszftzQC8bOsPLxwngjkDPgUR41mQpaCAnnqcfbl3iF0UpfohVMLrx9dc
 glK70T_MMZ0Cz1MEv7RM8WhAz3UUaL7G1R2GPHaOR9Jxe4_RiFTDplcGeTl1f6IPx6_G7xQuzdwb
 R_Y16OQTJQ_ZKWN_y0_dt0DP.rXF4EnNrWD_ypQ8pMjbssX1uV.nCsnTzaQhJdeIv1Jlwc8I2RgG
 V.XquixOxGCv8iPcqGBZwOPxJ2V2xXfxxKOQENTL40B.wwMydyM8CGCPOn.LC3IzEGMPsXiAV6Ky
 jCqLtouAf2fdbgt_STOERHQ4zRd_q1CX_7TkzQg--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.ne1.yahoo.com with HTTP; Sun, 12 Jan 2020 02:39:52 +0000
Date: Sun, 12 Jan 2020 02:17:49 +0000 (UTC)
From: "Mrs. Maureen Hinckley" <qq85@bavfton.com>
Message-ID: <493317656.10252380.1578795469275@mail.yahoo.com>
Subject: 
MIME-Version: 1.0
References: <493317656.10252380.1578795469275.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNodin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108
 Safari/537.36 OPR/65.0.3467.78
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
Reply-To: maurhinck7@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpJIGFtIE1hdXJlZW4gSGluY2tsZXkgYW5kIG15IGZvdW5kYXRpb24gaXMgZG9uYXRpbmcgKEZp
dmUgaHVuZHJlZCBhbmQgZmlmdHkgdGhvdXNhbmQgVVNEKSB0byB5b3UuIENvbnRhY3QgdXMgdmlh
IG15IGVtYWlsIGF0IChtYXVyaGluY2s3QGdtYWlsLmNvbSkgZm9yIGZ1cnRoZXIgZGV0YWlscy4K
CkJlc3QgUmVnYXJkcywKTXJzLiBNYXVyZWVuIEhpbmNrbGV5LApDb3B5cmlnaHQgwqkyMDIwIFRo
ZSBNYXVyZWVuIEhpbmNrbGV5IEZvdW5kYXRpb24gQWxsIFJpZ2h0cyBSZXNlcnZlZC4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
