Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 915B231FEA0
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 19:14:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01FC2871A2;
	Fri, 19 Feb 2021 18:14:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UDp-rIhgX74g; Fri, 19 Feb 2021 18:14:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDED087160;
	Fri, 19 Feb 2021 18:14:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85C2C1BF37C
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 18:14:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 730716064C
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 18:14:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EtZLd8a4poOE for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 18:14:44 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id BBF9E606F4; Fri, 19 Feb 2021 18:14:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from sonic313-9.consmr.mail.ne1.yahoo.com
 (sonic313-9.consmr.mail.ne1.yahoo.com [66.163.185.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 814306064C
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 18:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613758482; bh=NnlRH6FMRGMN6i7a7LVqzJ9aU7fAN4yoseAtKlK5ZMs=;
 h=From:Subject:To:Cc:Date:References:From:Subject:Reply-To;
 b=VAsv/x4/ymNVUF99A+Vtm4wct4hUJF7EV0ra+kBdgUVKAHRaXBlQ5rk/cpiv4lpqWq8jW4e3KYzjw8/Z9achN5d2F4Rdl4gc8FbiUMFcaFKgFZhHZbXYt4E0dv93YbWat99wuuidf2aExQono4HqTArqMOa94s+auufR00Olo2PnxCGHdBizL7vzPkKZ3Fr+M8QqSpQADm1gNZziP2AWcs1TOMaI149W2JTaBT+oVwWiAGmDY1HNBNpZhaJDCmIe/y1g2LcuCjJFees0jhIieTRr9/40iUC+UM1CdujpYHLJx1p5Z5R7FjQ0/epjUGhWtR9n4VarwgX+ahd6fupfRQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613758482; bh=ARE03tDBHbCjuCzQTUAGlDNmahcfGv6YcDaSuO+XIdy=;
 h=X-Sonic-MF:From:Subject:To:Date:From:Subject;
 b=BvOuKvKVgFNOhLB80bJRwWkdjXEkDCmZh8Vt3nEd+ToVmnurPa9hEVpKwKB1HBN/8yyOWA+dSmJjRyGe39wB+0Zf+AnI+xlij1TgHOavtJ7cjERrXyFMl574vxho5lE2tyFzG1Kg3nfaLbDf8Y54iXH1ayzYKHy0wBrxASXMSJ9uV2RxXf1gpFl5QLGmERJNc44iqURH4tqGLylBAxakmA4D63KObV0AxOaJJKiv5rRTwHpyIJrCTibCpb3eeraFgt9Ydq6HPNgafW1vqYZKab8Ps5bUfsyzxTe5RxXnxpN7lg3Lhf7Tad7VtFi3H7JtOAw3Kpp+FtQpW/8ZHKvfzA==
X-YMail-OSG: aOilHLwVM1mf_QXgSCSUqdJaXn5c0S1LYSsComH_HZa5fwECEwQT0qrgB59JXsg
 vW_tc8IO9icPImZ1C2bLuiQmKeUfrdXIrwkNI8Fd6V8ADB3iB9QOC14L34RYhCaPZEUY49sZRcMG
 lWRCXh0G76r8cFS8OAOkzRhFIbVFmryaSUB8Zdg2KPUjSAIzyhLJ9nN3jGCaCtgy8.ofvHVZMHsT
 fRdzx.fwXQPUpNWwg0o7Z8MyPLw8ddC8WwuJ__5E3_p9iGJj.tIWCjRyqYOGEpbNyeCVCZS911vN
 FsVvX5kOuCrj0lWa38iUoKG773mxurm0vv6S5Q9dVM53KvY3T7BLxZTdsiZcPeupz2MnoWrxjEDR
 AKaBQSZYHXmoql33Ak8V1g3tAfe_eTGtVX.f7ST4jAauVEM.3Y..c.ed_8rAY3n.2TQHnLggJ2A7
 f66k_CJiQf8bEfNWeJ4.wQA7RFfa_lSYq9wwq2fdTbnVqrpL5S96B6f0nWyYlYgqqsm7iVhRBDVz
 ihhlAPfasMjG_zD9f.d8FVe72v_YKSH8.cYsvCFdSXY3ionbXsNklePWKzCbsjqb.pheAd1qToUB
 RCaQ0x2j767dGTt5Lw1nCMDdvQI58Xt80k54NHoQCFoBs1jbQO8TseMEQLjXhe8AZT3Xx0HuF_QQ
 aCWMvi6ZfmWWMotFdtg.D6bAPBNx6XKOEJhlOf5xItFtj7WrhoZIRIwuitqX23L1EomM6ulhSBKD
 Dus3QKEZnfVhNQYgnLU7.YDR3nKtWwxr_DbT3BA58eJi8QAljLlWSd_X1jCrAvZ_fjzA4x_tjUTc
 Bq4UwnGjXTke_x26nlv2kPSPIdXYDDoQ1RQRvAxH6xu4xcg5PIM3Mu8NXTW4u_hCyz69CAvt8cBH
 fW44yPP9ENQxoWOp0VLS8duQgmBWiQWXQKUvgFtY0yWVRcH6O5QKPUzAOn3T5GEQqpyp.D4eMQxL
 SlPgr.fVx6OQMhDH5BoYBS3DsfJ6udGyMFgfwJ0Fc5XTNP9tGVMAdzY6a_FQaJF2bLIQ1xHvWcwU
 mBo_zngnEF7wQMh3wpdZDCUjU5WFXEzSaWdPmEyLL6dEHkBr07DOrqhK6JkUKAMtq.FIPs6ftnZu
 W1RwAGcT7aK.zn7WXMetqUnuooCrgNjb.x2uRKDouj2avzwN_gS5xKLt86.ZYa3V3TQPdYrDQVB4
 LhUbpt__SZrubfr7J7iqiuIHjQ6H.CHIWTvPz4a_ahzhbxM1NDVKxg0LQYxa2q6L6Z38K6C_GSkt
 6WkUdn5UgFIpBa3p8IvNRz0vYrh2MMc2LCG59pci66ABFmTcYr_K3WnpmAgzn5uYcvkm2Fz4W7uW
 BluGsOGmKjqMLizDug7cXmqmvZn4rg1g_N3ivxBqKLjTSxe_dcoCPLldffCKpx1qk_jEq_TLdAnw
 F8eopTNpqxEtgvJbH9v2eVQ04R0ovueYxzNYJbOXWB2_e9qIEaAR76lY3hasLK4gSUc5RfmUXp.a
 w.6NysRB.VId.7yvNRbj8Lc3pU2JS8SX1.RYsgBqAN1s8Cvrf4xRuD70DSRpmtmqxYN91BADxN9O
 Pen4IFHc7LHPc0hGo5MzPs4kx073D75tHWvNXISqFmuF4dsXJjIZUDQDtOBkN8vilCFbdGvYvOQJ
 BzMoedaW793oi.588lBY35zPWfgqnOIK427Cztrls83SzbVTd5xb50atPrfxP7UNcijpUeS5v4_Z
 DBfrqym3lhr_8d76qDrFVNKdybpJcEuoNv8VNbufT9j3V6w8kQjuu3ahS99._NpUZVyz_wDblK.j
 s60bV9OkHQ01ort06w08SHi_mCItqszOL_IQWw59qfuQUwiVHyAJDFOmzVkGnLkE.geY8icAlf9H
 qcAzIPnpzhvG68X8Y3G2f0otfVO_IN.x6dezGx1ZaSFG7M4L3vNn7n1h63X9kdtPQzMLnsYXqbS7
 zWSvaVMVWPZudcXBawwvVJHB7FCFUQ1bV15sfTq34u.Ho8f8pNNogl_yb0VCYgVszvJ5Ld.X7zlW
 b9qlipM2DNFC9aBVh6ZySD_eVkvlTNaw_G6cbBvN2Ksluuug.7SK5izUih2di1iKN9GEHNWj_.Cp
 j0i17fZSgfh4thZoYnL8ejvIsAsN.mODMGP3KTTajiMeOVI4QlZX75qZkGuvEvvWqP46WwlHJvym
 najEevP8qwPrOhMKAoubJjddQECpflciT6GDRat37qCskgJkoq0CfT9ZtWjkvRi342N4q7GIRzQv
 u2D_GYmI3TgvlAUxuO2SenuSFHTPOtG1VoR8FyPNKGrXu5v3a0eiyN1AKneOUB4rNCV9LrNcZO_W
 qX9t0akEuJm85MpHpnGo4eeyBDPGpEPi4kNgBxpXFDriTbwZeSJhjMRAr5zYLU6ScWJX0oORd3fb
 9jKpoh6kDoJ5x54wWyyG7i_VPrljUPlMuIMzMjgj0JA8YBIQreapZhrxk710qkjXm28h7peyHwgV
 kOtp8ZQBPXrTDNjYAC9.ihyvdMHwmPid5LjSnzC6ok732o0kJfCF5jqqmudSrpL3ajJS9bM2DOcH
 n2yF6Y4ezwsHNMJVgqHwgDXv_bF1JCcj4uuQnLkUihkiLk9D8jZaPjAnEu3.QfdsNGRUmPu6EPpS
 6dE9AbLjbzzFizcIzhNissLWHfkTXh29RvMOBxfUuM4plb4BA93eSp1sTxm1r51fRA4qb2PfruWX
 HotHGOvElrKBtqpTLOgBzoSHTv28OScHf84eXWd6Gfypxuod_l1FEgRTircEsK.EUmqFEqWi26l8
 Y_1PfA.pN96H1693Y
X-Sonic-MF: <ashishvara89@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.ne1.yahoo.com with HTTP; Fri, 19 Feb 2021 18:14:42 +0000
Received: by smtp403.mail.sg3.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 4b8c34d686fca2b16d1a95a4fd51af5e; 
 Fri, 19 Feb 2021 18:14:37 +0000 (UTC)
From: Ashish Vara <ashishvara89@yahoo.com>
Subject: [PATCH] staging: gasket: removed unnecessary debug message to fix
 coding style warning
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
 rcy@google.com, gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Message-ID: <0c041d98-9b0f-95a3-3b19-ff94243a0bbc@yahoo.com>
Date: Fri, 19 Feb 2021 23:44:33 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
References: <0c041d98-9b0f-95a3-3b19-ff94243a0bbc.ref@yahoo.com>
X-Mailer: WebService/1.1.17712
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.9.1)
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
Cc: ashishvara89@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ashish Vara <ashishvara89@yahoo.com>

removed unnecessary out of memory message to fix coding style warning.

Signed-off-by: Ashish Vara <ashishvara89@yahoo.com>
---
 drivers/staging/gasket/gasket_page_table.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
index 6f6273c83822..2dbf3d9b8f34 100644
--- a/drivers/staging/gasket/gasket_page_table.c
+++ b/drivers/staging/gasket/gasket_page_table.c
@@ -262,8 +262,6 @@ int gasket_page_table_init(struct gasket_page_table **ppg_tbl,
 	if (bytes != 0) {
 		pg_tbl->entries = vzalloc(bytes);
 		if (!pg_tbl->entries) {
-			dev_dbg(device,
-				"No memory for address translation metadata\n");
 			kfree(pg_tbl);
 			*ppg_tbl = NULL;
 			return -ENOMEM;
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
