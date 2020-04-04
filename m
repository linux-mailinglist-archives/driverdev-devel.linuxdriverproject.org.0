Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7445419E35C
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Apr 2020 09:36:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D5437204D0;
	Sat,  4 Apr 2020 07:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r-5oub58Pl0n; Sat,  4 Apr 2020 07:36:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 579CD203A2;
	Sat,  4 Apr 2020 07:36:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0AE171BF358
 for <devel@linuxdriverproject.org>; Sat,  4 Apr 2020 07:36:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0698B883F9
 for <devel@linuxdriverproject.org>; Sat,  4 Apr 2020 07:36:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VSpTkRirFA8e for <devel@linuxdriverproject.org>;
 Sat,  4 Apr 2020 07:36:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic317-34.consmr.mail.ne1.yahoo.com
 (sonic317-34.consmr.mail.ne1.yahoo.com [66.163.184.45])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6C41B883CA
 for <devel@driverdev.osuosl.org>; Sat,  4 Apr 2020 07:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1585985792; bh=cSYzoHoG9CBeGtg/Qmuqt/yq5zfvrx38YCeIP5UpIcQ=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=jggTAvDHL8VSAdgjfDz1PazUGjicv2UZ63d4pRq6xASVSbcoaQGte/l5YVOdIA5oFH+zV6LjKJPAALiaN+zumR8HeSV4dyT3WsMyxFQLm2bkwcQxnQwZhPazTbund2svDMUpJmv3O5iKoTDypIeDV2wEO7Bc3zur3qFSIdwXKFKIQCAKPOcEPodNz3+T8grQZ24MfMDlpXhYux/B6Ik9cNlh0AC9wU0mdRfDQi4a1q6EGi3UZ4Aqneww4LmDN4vJK6C6gjZ7jCo+AUplYlqQEFu1qWKNt7aRamXNsKcPqml38UM+ROX7BIQF1rEC6S8tjauZ7zkfIQNTBRDWcczOtg==
X-YMail-OSG: Ay7e9okVM1kod1_CV1ifXGULOJG9dhOy0wt2QqwOWX6_Vxb08V0tHd_lZVywdhh
 Mz_Z6tXv4.Lvai7bPd8Ja1T286nH4Bgy6qfd91mx8YPIRrQBPKxaZyrGV.aeU8x_xZCG.PvLzGyy
 zyCNt0IB_8z1ikgtaVdwzw3Bi5IEQu2WVXagm8Er.TKKuWFpioMXcFSHjGATDEilR1EbaZILy6Np
 bWvGBLbC_.XCfBAuVAcDfSUnRDLzTXSmN5ww_xauPIKu2AiLpdn1hnwBXFiFHl1PEkHXcTfCQrz6
 8mxjVDht6R_MoCBrkA8w8FgJ5dwo3OS.PKd9_EVwHDP9T9KFR.4_aR_rp8oYz4Y2IRU8pBtPG9MY
 NIQ_EWPBzBiOWm1Th9.A9BulrN8QfDVB6EUb.9LQVh5k3JMRwX0dgfdChhKNQF5yF2eIB_roF9fv
 _WyNNCZJz3UbXyKlN2I3bFEyQBrA8hFGERlf68GwRj6Eb7dzRNo9_5hHnx508twek2uDJFNM_FL2
 SNe_2Es48HohI.tMR3CxsUud4FK1Zz1LTYkHdOyJbf1CHJgB6I95htTTYDd.JcpAAPgbU7SkkF_F
 xNOneCm_chRh2xXS0fKw_oMJcLY_tnU3Ymf.kdu3m87781TURBjbxTS_PSzGWcAC2YS4turKdxl7
 WespHI3mgMKVMVEyFqVyy6njeCNCWf0RL5gkeLK21n1gkH7gA1jRyxCSmtbJtj356tnNz6lCguGO
 PJwPeGbaUuQ6T4V3HE7Pnm_xn4mRycMgCXss38ObXHkNwNsaLEXVfzm24YVALt5L2P0Ea8urBVo1
 c92N1AJP6Ek1Gw_0jvGVXviLyzPlBa3MdPPiu4eqfiH5b7DJIRA6wRml1ZPhHhWGEK4fHUYpq0f8
 7N042zThRGwexTRw4154aUDOJYKnll0SXsH7Jn2XOjxJR1SOOuL8VEIh9tIoR8gAlgZigFQMbBUn
 4KE6bDCupDyJcDlAJTEXNUGgqW.bMOtIpEfs5Zin4mVgoOJd2nXSrZNcDmf9AaKpiRT3LxBWTS6b
 i7xtHhBHaY0dD7InOeieyLykTntZBy0FpZBctWO_mRN_1UH8qMw3ahpdp.anDh7R6zU7eph_XfVJ
 WLiqeAe1euZwGzjcZO0GAlyC_5_qcDBCLoD28l8I1dKHbfqUpUhTCPfqViCNaTmVoxaYRq17EqTC
 9.1ne2zd0g3U2ZpkvNYCOzEyaLkOztpkzSGfupox3hVhxoolVL0eRaqgd2JPrZ_l0G_ZCk0VbAsF
 gkw8HOfa1P8eAzOmoPTY_PapSEmAbM24Zuft8CBYjIDUXXdsHbjN_FDzLMnY-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic317.consmr.mail.ne1.yahoo.com with HTTP; Sat, 4 Apr 2020 07:36:32 +0000
Date: Sat, 4 Apr 2020 07:36:31 +0000 (UTC)
From: Mr Amihe <amiheobibi2000@yahoo.com>
Message-ID: <162487051.334824.1585985791174@mail.yahoo.com>
Subject: Attention: E-mail Address Owner,
MIME-Version: 1.0
References: <162487051.334824.1585985791174.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15620 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:74.0) Gecko/20100101 Firefox/74.0
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
Reply-To: amiheobibi2000@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgoKCkF0dGVudGlvbjogRS1tYWlsIEFkZHJlc3MgT3duZXIsCgpFbWFpbDogd2VzdHR0ZXJuMTY2
QGdtYWlsLmNvbQoKU2VxdWVsIHRvIHRoZSBtZWV0aW5nIGhlbGQgd2l0aCBGZWRlcmFsIEJ1cmVh
dSBvZiBJbnZlc3RpZ2F0aW9uLCBUaGUgSW50ZXJuYXRpb25hbCBNb25ldGFyeSBGdW5kIChJTUYp
IGlzIGNvbXBlbnNhdGluZyBhbGwgdGhlIHNjYW0gdmljdGltcyBhbmQgc29tZSBlbWFpbCB1c2Vy
cyB3aGljaCB5b3VyIG5hbWUgYW5kIGVtYWlsIGFkZHJlc3Mgd2FzIGZvdW5kIG9uIHRoZSBsaXN0
LgoKSG93ZXZlciwgd2UgaGF2ZSBjb25jbHVkZWQgdG8gZWZmZWN0IHlvdXIgb3duIHBheW1lbnQg
dGhyb3VnaCBXZXN0ZXJuIFVuaW9uw4LCriBNb25leSBUcmFuc2ZlciwgJDUsMDAwIGRhaWx5IHVu
dGlsIHRoZSB0b3RhbCBzdW0gb2YgeW91ciBjb21wZW5zYXRpb24gZnVuZCBpcyB0cmFuc2ZlcnJl
ZCB0byB5b3UuCgpCRUxPVyBJUyBUSEUgTVRDTiBBTkQgVFJBQ0tJTkcgV0VCU0lURSBUTyBFTkFC
TEUgWU9VIFRSQUNLIFlPVVIgRklSU1QgUFJPR1JBTU1FRCBBUFBST1ZFRCBQQVlNRU5ULAoKaHR0
cHM6Ly93d3cud2VzdGVybnVuaW9uLmNvbS9nbG9iYWwtc2VydmljZS90cmFjay10cmFuc2ZlcgoK
TVRDTiM6NDAyIDk5MCAwNTE0CgpBbW91bnQgUHJvZ3JhbW1lZDogJDUuMDAwCgpZb3UgYXJlIGFk
dmlzZWQgdG8gZ2V0IGJhY2sgdG8gdGhlIGNvbnRhY3QgcGVyc29uIHRyb3VnaCB0aGUgZW1haWwg
YmVsb3cgZm9yIG1vcmUgZGlyZWN0aW9uIG9uIGhvdyB0byBiZSByZWNlaXZpbmcgeW91ciBwYXlt
ZW50CgpDb250YWN0IHBlcnNvbjogLiAuIERyLiBFbmcuIEJyaWdodCBTYW0KRW1haWw6IHdlc3R0
dGVybjE2NkBnbWFpbC5jb20KClRoYW5rcywKRGlyZWN0b3IgV2VzdGVybiBVbmlvbiBNb25leSBU
cmFuc2ZlciwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
