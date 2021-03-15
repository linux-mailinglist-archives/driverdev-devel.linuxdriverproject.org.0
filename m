Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB7F33C361
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:07:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7630483592;
	Mon, 15 Mar 2021 17:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vucu8MDAdfhc; Mon, 15 Mar 2021 17:07:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DDD9882951;
	Mon, 15 Mar 2021 17:07:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C47321BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B394947489
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MCZ0SjTVSrgl for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6577D47A73
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:13 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id c10so67419911ejx.9
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=mewTuoEom8o+PgQSYu6e5tXqjob4Mm6J0USDWHVFHbI=;
 b=vhctfWwR7cFesWLMlA/lSIszuKF6a8XgC79rBrpzu5kP8mvf8XfH5Yauwawff2ynTx
 VMcUr99dz9oakAgkhs2aFv5dhZHywzjidn7niWjivzWeOd1tQBOljs63G0VTUEspUrcx
 l6FIj2eXVcItez7/OlGuiuOP6qhs21rIb4aYzsmtmb1iQsAI1Lyzc/uE/mYJ4pnk8RbV
 sl9KD9hcobSM1NHIJd5fxUT0KTnEsugNTKUemt5cwgdeZHOhkp0sHWttankzB87faYIH
 NpNXJ8IW1dMh+mkNPx/N7HKxjYgobXOdsU5N85paOUc5kKXm50/pPz3xwZHMAkQ2R8oQ
 GUgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mewTuoEom8o+PgQSYu6e5tXqjob4Mm6J0USDWHVFHbI=;
 b=TPmgEc/pcHkab2ZLwgU6FUd4O+38TlRA2UsCTtd5Azy2bpKREOU4xSho9Kjn4yb10t
 H1Lm4VJk5qgVTSwLTm091BhaB5/LdaC/v8eu4qzJN2/GcxtfclY6qgfvtzxxT3MSMvVZ
 P03ykNjXu8Vr5WAIYy7UdQ2OF73Hjn216q8pkp+YQCsFBwe2S2v+Let2LJ8jGZ31jE/3
 PRJ2QqEhe7rHfq2k6bnDCZYSYSWpRZu+22psHhBK3jTdD8KnTuUy0B/R3zsZjswIvmOG
 n1QYgoYKTX7jKNqHKzCq4QCA55in6JvJuREbGiB+8R+Vm/UyuxckY3WYevDEfBFHxg6b
 NT+g==
X-Gm-Message-State: AOAM532nB/bHwELYVqk0ylO/M4+aNv9NFoYtPlNRz6Q4Tjm4ecDulM/Y
 9itFg8xyjeM5z64JgeXGyzEC59YVlwg=
X-Google-Smtp-Source: ABdhPJy2gw0FbIFI1fNpRbS1DioNs1vaddN8smZfSujfLuSrwyE+9lS4t0cbjwRKmv2d/D/ZlEVpDQ==
X-Received: by 2002:a17:906:2b0a:: with SMTP id
 a10mr24918740ejg.513.1615827971193; 
 Mon, 15 Mar 2021 10:06:11 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:10 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 04/57] Staging: rtl8723bs: fix spaces in HalBtc8723b2Ant.c
Date: Mon, 15 Mar 2021 18:05:25 +0100
Message-Id: <20210315170618.2566-5-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #19: FILE: ./hal/HalBtc8723b2Ant.c:19:
    +static struct COEX_DM_8723B_2ANT * pCoexDm = &GLCoexDm8723b2Ant;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #21: FILE: ./hal/HalBtc8723b2Ant.c:21:
    +static struct COEX_STA_8723B_2ANT * pCoexSta = &GLCoexSta8723b2Ant;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #111: FILE: ./hal/HalBtc8723b2Ant.c:111:
    +	struct BTC_COEXIST * pBtCoexist,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #192: FILE: ./hal/HalBtc8723b2Ant.c:192:
    +	struct BTC_COEXIST * pBtCoexist,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #215: FILE: ./hal/HalBtc8723b2Ant.c:215:
    +static void halbtc8723b2ant_MonitorBtCtr(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #265: FILE: ./hal/HalBtc8723b2Ant.c:265:
    +static void halbtc8723b2ant_QueryBtInfo(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #282: FILE: ./hal/HalBtc8723b2Ant.c:282:
    +static bool halbtc8723b2ant_IsWifiStatusChanged(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #313: FILE: ./hal/HalBtc8723b2Ant.c:313:
    +static void halbtc8723b2ant_UpdateBtLinkInfo(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #315: FILE: ./hal/HalBtc8723b2Ant.c:315:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #377: FILE: ./hal/HalBtc8723b2Ant.c:377:
    +static u8 halbtc8723b2ant_ActionAlgorithm(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #379: FILE: ./hal/HalBtc8723b2Ant.c:379:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #552: FILE: ./hal/HalBtc8723b2Ant.c:552:
    +	struct BTC_COEXIST * pBtCoexist, u8 dacSwingLvl

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #576: FILE: ./hal/HalBtc8723b2Ant.c:576:
    +	struct BTC_COEXIST * pBtCoexist, u8 decBtPwrLvl

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #597: FILE: ./hal/HalBtc8723b2Ant.c:597:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 decBtPwrLvl

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #631: FILE: ./hal/HalBtc8723b2Ant.c:631:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 fwDacSwingLvl

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #666: FILE: ./hal/HalBtc8723b2Ant.c:666:
    +	struct BTC_COEXIST * pBtCoexist,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #689: FILE: ./hal/HalBtc8723b2Ant.c:689:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bRxRfShrinkOn

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #723: FILE: ./hal/HalBtc8723b2Ant.c:723:
    +	struct BTC_COEXIST * pBtCoexist, bool bLowPenaltyRa

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #751: FILE: ./hal/HalBtc8723b2Ant.c:751:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bLowPenaltyRa

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #785: FILE: ./hal/HalBtc8723b2Ant.c:785:
    +static void halbtc8723b2ant_SetDacSwingReg(struct BTC_COEXIST * pBtCoexist, u32 level)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #798: FILE: ./hal/HalBtc8723b2Ant.c:798:
    +	struct BTC_COEXIST * pBtCoexist, bool bSwDacSwingOn, u32 swDacSwingLvl

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #809: FILE: ./hal/HalBtc8723b2Ant.c:809:
    +	struct BTC_COEXIST * pBtCoexist,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #853: FILE: ./hal/HalBtc8723b2Ant.c:853:
    +	struct BTC_COEXIST * pBtCoexist, bool bAgcTableEn

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #913: FILE: ./hal/HalBtc8723b2Ant.c:913:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bAgcTableEn

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #947: FILE: ./hal/HalBtc8723b2Ant.c:947:
    +	struct BTC_COEXIST * pBtCoexist,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #984: FILE: ./hal/HalBtc8723b2Ant.c:984:
    +	struct BTC_COEXIST * pBtCoexist,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1050: FILE: ./hal/HalBtc8723b2Ant.c:1050:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 type

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1099: FILE: ./hal/HalBtc8723b2Ant.c:1099:
    +	struct BTC_COEXIST * pBtCoexist, bool bEnable

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1120: FILE: ./hal/HalBtc8723b2Ant.c:1120:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bEnable

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1148: FILE: ./hal/HalBtc8723b2Ant.c:1148:
    +	struct BTC_COEXIST * pBtCoexist,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1187: FILE: ./hal/HalBtc8723b2Ant.c:1187:
    +	struct BTC_COEXIST * pBtCoexist,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1199: FILE: ./hal/HalBtc8723b2Ant.c:1199:
    +	struct BTC_COEXIST * pBtCoexist,

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1211: FILE: ./hal/HalBtc8723b2Ant.c:1211:
    +	struct BTC_COEXIST * pBtCoexist, u8 antPosType, bool bInitHwCfg, bool bWifiOff

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1214: FILE: ./hal/HalBtc8723b2Ant.c:1214:
    +	struct BTC_BOARD_INFO * pBoardInfo = &pBtCoexist->boardInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1305: FILE: ./hal/HalBtc8723b2Ant.c:1305:
    +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bTurnOn, u8 type

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1437: FILE: ./hal/HalBtc8723b2Ant.c:1437:
    +static void halbtc8723b2ant_CoexAllOff(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1453: FILE: ./hal/HalBtc8723b2Ant.c:1453:
    +static void halbtc8723b2ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1465: FILE: ./hal/HalBtc8723b2Ant.c:1465:
    +static void halbtc8723b2ant_ActionBtInquiry(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1493: FILE: ./hal/HalBtc8723b2Ant.c:1493:
    +static bool halbtc8723b2ant_IsCommonAction(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1594: FILE: ./hal/HalBtc8723b2Ant.c:1594:
    +	struct BTC_COEXIST * pBtCoexist, bool bScoHid, bool bTxPause, u8 maxInterval

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2044: FILE: ./hal/HalBtc8723b2Ant.c:2044:
    +static void halbtc8723b2ant_ActionSco(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2099: FILE: ./hal/HalBtc8723b2Ant.c:2099:
    +static void halbtc8723b2ant_ActionHid(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2160: FILE: ./hal/HalBtc8723b2Ant.c:2160:
    +static void halbtc8723b2ant_ActionA2dp(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2241: FILE: ./hal/HalBtc8723b2Ant.c:2241:
    +static void halbtc8723b2ant_ActionA2dpPanHs(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2291: FILE: ./hal/HalBtc8723b2Ant.c:2291:
    +static void halbtc8723b2ant_ActionPanEdr(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2349: FILE: ./hal/HalBtc8723b2Ant.c:2349:
    +static void halbtc8723b2ant_ActionPanHs(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2399: FILE: ./hal/HalBtc8723b2Ant.c:2399:
    +static void halbtc8723b2ant_ActionPanEdrA2dp(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2460: FILE: ./hal/HalBtc8723b2Ant.c:2460:
    +static void halbtc8723b2ant_ActionPanEdrHid(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2524: FILE: ./hal/HalBtc8723b2Ant.c:2524:
    +static void halbtc8723b2ant_ActionHidA2dpPanEdr(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2584: FILE: ./hal/HalBtc8723b2Ant.c:2584:
    +static void halbtc8723b2ant_ActionHidA2dp(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2659: FILE: ./hal/HalBtc8723b2Ant.c:2659:
    +static void halbtc8723b2ant_RunCoexistMechanism(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2758: FILE: ./hal/HalBtc8723b2Ant.c:2758:
    +static void halbtc8723b2ant_WifiOffHwCfg(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2783: FILE: ./hal/HalBtc8723b2Ant.c:2783:
    +static void halbtc8723b2ant_InitHwConfig(struct BTC_COEXIST * pBtCoexist, bool bBackUp)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2817: FILE: ./hal/HalBtc8723b2Ant.c:2817:
    +void EXhalbtc8723b2ant_PowerOnSetting(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2819: FILE: ./hal/HalBtc8723b2Ant.c:2819:
    +	struct BTC_BOARD_INFO * pBoardInfo = &pBtCoexist->boardInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2869: FILE: ./hal/HalBtc8723b2Ant.c:2869:
    +void EXhalbtc8723b2ant_InitHwConfig(struct BTC_COEXIST * pBtCoexist, bool bWifiOnly)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2874: FILE: ./hal/HalBtc8723b2Ant.c:2874:
    +void EXhalbtc8723b2ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2881: FILE: ./hal/HalBtc8723b2Ant.c:2881:
    +void EXhalbtc8723b2ant_DisplayCoexInfo(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2883: FILE: ./hal/HalBtc8723b2Ant.c:2883:
    +	struct BTC_BOARD_INFO * pBoardInfo = &pBtCoexist->boardInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2884: FILE: ./hal/HalBtc8723b2Ant.c:2884:
    +	struct BTC_STACK_INFO * pStackInfo = &pBtCoexist->stackInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #2885: FILE: ./hal/HalBtc8723b2Ant.c:2885:
    +	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3262: FILE: ./hal/HalBtc8723b2Ant.c:3262:
    +void EXhalbtc8723b2ant_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3279: FILE: ./hal/HalBtc8723b2Ant.c:3279:
    +void EXhalbtc8723b2ant_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3290: FILE: ./hal/HalBtc8723b2Ant.c:3290:
    +void EXhalbtc8723b2ant_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3299: FILE: ./hal/HalBtc8723b2Ant.c:3299:
    +void EXhalbtc8723b2ant_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3308: FILE: ./hal/HalBtc8723b2Ant.c:3308:
    +void EXhalbtc8723b2ant_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3354: FILE: ./hal/HalBtc8723b2Ant.c:3354:
    +void EXhalbtc8723b2ant_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 type)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3362: FILE: ./hal/HalBtc8723b2Ant.c:3362:
    +	struct BTC_COEXIST * pBtCoexist, u8 *tmpBuf, u8 length

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3506: FILE: ./hal/HalBtc8723b2Ant.c:3506:
    +void EXhalbtc8723b2ant_HaltNotify(struct BTC_COEXIST * pBtCoexist)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3517: FILE: ./hal/HalBtc8723b2Ant.c:3517:
    +void EXhalbtc8723b2ant_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #3531: FILE: ./hal/HalBtc8723b2Ant.c:3531:
    +void EXhalbtc8723b2ant_Periodical(struct BTC_COEXIST * pBtCoexist)

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 .../staging/rtl8723bs/hal/HalBtc8723b2Ant.c   | 142 +++++++++---------
 1 file changed, 71 insertions(+), 71 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
index cd09e6e288fc..8d5f666b2e23 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
@@ -16,9 +16,9 @@ do {									      \
 
 /*  Global variables, these are static variables */
 static struct COEX_DM_8723B_2ANT GLCoexDm8723b2Ant;
-static struct COEX_DM_8723B_2ANT * pCoexDm = &GLCoexDm8723b2Ant;
+static struct COEX_DM_8723B_2ANT *pCoexDm = &GLCoexDm8723b2Ant;
 static struct COEX_STA_8723B_2ANT GLCoexSta8723b2Ant;
-static struct COEX_STA_8723B_2ANT * pCoexSta = &GLCoexSta8723b2Ant;
+static struct COEX_STA_8723B_2ANT *pCoexSta = &GLCoexSta8723b2Ant;
 
 static const char *const GLBtInfoSrc8723b2Ant[] = {
 	"BT Info[wifi fw]",
@@ -108,7 +108,7 @@ static u8 halbtc8723b2ant_BtRssiState(
 }
 
 static u8 halbtc8723b2ant_WifiRssiState(
-	struct BTC_COEXIST * pBtCoexist,
+	struct BTC_COEXIST *pBtCoexist,
 	u8 index,
 	u8 levelNum,
 	u8 rssiThresh,
@@ -189,7 +189,7 @@ static u8 halbtc8723b2ant_WifiRssiState(
 }
 
 static void halbtc8723b2ant_LimitedRx(
-	struct BTC_COEXIST * pBtCoexist,
+	struct BTC_COEXIST *pBtCoexist,
 	bool bForceExec,
 	bool bRejApAggPkt,
 	bool bBtCtrlAggBufSize,
@@ -212,7 +212,7 @@ static void halbtc8723b2ant_LimitedRx(
 	pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_AGGREGATE_CTRL, NULL);
 }
 
-static void halbtc8723b2ant_MonitorBtCtr(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_MonitorBtCtr(struct BTC_COEXIST *pBtCoexist)
 {
 	u32 regHPTxRx, regLPTxRx, u4Tmp;
 	u32 regHPTx = 0, regHPRx = 0, regLPTx = 0, regLPRx = 0;
@@ -262,7 +262,7 @@ static void halbtc8723b2ant_MonitorBtCtr(struct BTC_COEXIST * pBtCoexist)
 	pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x76e, 0xc);
 }
 
-static void halbtc8723b2ant_QueryBtInfo(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_QueryBtInfo(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 	H2C_Parameter[1] = {0};
 
@@ -279,7 +279,7 @@ static void halbtc8723b2ant_QueryBtInfo(struct BTC_COEXIST * pBtCoexist)
 	pBtCoexist->fBtcFillH2c(pBtCoexist, 0x61, 1, H2C_Parameter);
 }
 
-static bool halbtc8723b2ant_IsWifiStatusChanged(struct BTC_COEXIST * pBtCoexist)
+static bool halbtc8723b2ant_IsWifiStatusChanged(struct BTC_COEXIST *pBtCoexist)
 {
 	static bool	bPreWifiBusy, bPreUnder4way, bPreBtHsOn;
 	bool bWifiBusy = false, bUnder4way = false, bBtHsOn = false;
@@ -310,9 +310,9 @@ static bool halbtc8723b2ant_IsWifiStatusChanged(struct BTC_COEXIST * pBtCoexist)
 	return false;
 }
 
-static void halbtc8723b2ant_UpdateBtLinkInfo(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_UpdateBtLinkInfo(struct BTC_COEXIST *pBtCoexist)
 {
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bBtHsOn = false;
 
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_HS_OPERATION, &bBtHsOn);
@@ -374,9 +374,9 @@ static void halbtc8723b2ant_UpdateBtLinkInfo(struct BTC_COEXIST * pBtCoexist)
 		pBtLinkInfo->bHidOnly = false;
 }
 
-static u8 halbtc8723b2ant_ActionAlgorithm(struct BTC_COEXIST * pBtCoexist)
+static u8 halbtc8723b2ant_ActionAlgorithm(struct BTC_COEXIST *pBtCoexist)
 {
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	bool bBtHsOn = false;
 	u8 algorithm = BT_8723B_2ANT_COEX_ALGO_UNDEFINED;
 	u8 numOfDiffProfile = 0;
@@ -549,7 +549,7 @@ static u8 halbtc8723b2ant_ActionAlgorithm(struct BTC_COEXIST * pBtCoexist)
 }
 
 static void halbtc8723b2ant_SetFwDacSwingLevel(
-	struct BTC_COEXIST * pBtCoexist, u8 dacSwingLvl
+	struct BTC_COEXIST *pBtCoexist, u8 dacSwingLvl
 )
 {
 	u8 	H2C_Parameter[1] = {0};
@@ -573,7 +573,7 @@ static void halbtc8723b2ant_SetFwDacSwingLevel(
 }
 
 static void halbtc8723b2ant_SetFwDecBtPwr(
-	struct BTC_COEXIST * pBtCoexist, u8 decBtPwrLvl
+	struct BTC_COEXIST *pBtCoexist, u8 decBtPwrLvl
 )
 {
 	u8 	H2C_Parameter[1] = {0};
@@ -594,7 +594,7 @@ static void halbtc8723b2ant_SetFwDecBtPwr(
 }
 
 static void halbtc8723b2ant_DecBtPwr(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 decBtPwrLvl
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 decBtPwrLvl
 )
 {
 	BTC_PRINT(
@@ -628,7 +628,7 @@ static void halbtc8723b2ant_DecBtPwr(
 }
 
 static void halbtc8723b2ant_FwDacSwingLvl(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 fwDacSwingLvl
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 fwDacSwingLvl
 )
 {
 	BTC_PRINT(
@@ -663,7 +663,7 @@ static void halbtc8723b2ant_FwDacSwingLvl(
 }
 
 static void halbtc8723b2ant_SetSwRfRxLpfCorner(
-	struct BTC_COEXIST * pBtCoexist,
+	struct BTC_COEXIST *pBtCoexist,
 	bool bRxRfShrinkOn
 )
 {
@@ -686,7 +686,7 @@ static void halbtc8723b2ant_SetSwRfRxLpfCorner(
 }
 
 static void halbtc8723b2ant_RfShrink(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bRxRfShrinkOn
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bRxRfShrinkOn
 )
 {
 	BTC_PRINT(
@@ -720,7 +720,7 @@ static void halbtc8723b2ant_RfShrink(
 }
 
 static void halbtc8723b2ant_SetSwPenaltyTxRateAdaptive(
-	struct BTC_COEXIST * pBtCoexist, bool bLowPenaltyRa
+	struct BTC_COEXIST *pBtCoexist, bool bLowPenaltyRa
 )
 {
 	u8 	H2C_Parameter[6] = {0};
@@ -748,7 +748,7 @@ static void halbtc8723b2ant_SetSwPenaltyTxRateAdaptive(
 }
 
 static void halbtc8723b2ant_LowPenaltyRa(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bLowPenaltyRa
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bLowPenaltyRa
 )
 {
 	/* return; */
@@ -782,7 +782,7 @@ static void halbtc8723b2ant_LowPenaltyRa(
 	pCoexDm->bPreLowPenaltyRa = pCoexDm->bCurLowPenaltyRa;
 }
 
-static void halbtc8723b2ant_SetDacSwingReg(struct BTC_COEXIST * pBtCoexist, u32 level)
+static void halbtc8723b2ant_SetDacSwingReg(struct BTC_COEXIST *pBtCoexist, u32 level)
 {
 	u8 val = (u8)level;
 
@@ -795,7 +795,7 @@ static void halbtc8723b2ant_SetDacSwingReg(struct BTC_COEXIST * pBtCoexist, u32
 }
 
 static void halbtc8723b2ant_SetSwFullTimeDacSwing(
-	struct BTC_COEXIST * pBtCoexist, bool bSwDacSwingOn, u32 swDacSwingLvl
+	struct BTC_COEXIST *pBtCoexist, bool bSwDacSwingOn, u32 swDacSwingLvl
 )
 {
 	if (bSwDacSwingOn)
@@ -806,7 +806,7 @@ static void halbtc8723b2ant_SetSwFullTimeDacSwing(
 
 
 static void halbtc8723b2ant_DacSwing(
-	struct BTC_COEXIST * pBtCoexist,
+	struct BTC_COEXIST *pBtCoexist,
 	bool bForceExec,
 	bool bDacSwingOn,
 	u32 dacSwingLvl
@@ -850,7 +850,7 @@ static void halbtc8723b2ant_DacSwing(
 }
 
 static void halbtc8723b2ant_SetAgcTable(
-	struct BTC_COEXIST * pBtCoexist, bool bAgcTableEn
+	struct BTC_COEXIST *pBtCoexist, bool bAgcTableEn
 )
 {
 	u8 rssiAdjustVal = 0;
@@ -910,7 +910,7 @@ static void halbtc8723b2ant_SetAgcTable(
 }
 
 static void halbtc8723b2ant_AgcTable(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bAgcTableEn
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bAgcTableEn
 )
 {
 	BTC_PRINT(
@@ -944,7 +944,7 @@ static void halbtc8723b2ant_AgcTable(
 }
 
 static void halbtc8723b2ant_SetCoexTable(
-	struct BTC_COEXIST * pBtCoexist,
+	struct BTC_COEXIST *pBtCoexist,
 	u32 val0x6c0,
 	u32 val0x6c4,
 	u32 val0x6c8,
@@ -981,7 +981,7 @@ static void halbtc8723b2ant_SetCoexTable(
 }
 
 static void halbtc8723b2ant_CoexTable(
-	struct BTC_COEXIST * pBtCoexist,
+	struct BTC_COEXIST *pBtCoexist,
 	bool bForceExec,
 	u32 val0x6c0,
 	u32 val0x6c4,
@@ -1047,7 +1047,7 @@ static void halbtc8723b2ant_CoexTable(
 }
 
 static void halbtc8723b2ant_CoexTableWithType(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u8 type
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, u8 type
 )
 {
 	switch (type) {
@@ -1096,7 +1096,7 @@ static void halbtc8723b2ant_CoexTableWithType(
 }
 
 static void halbtc8723b2ant_SetFwIgnoreWlanAct(
-	struct BTC_COEXIST * pBtCoexist, bool bEnable
+	struct BTC_COEXIST *pBtCoexist, bool bEnable
 )
 {
 	u8 	H2C_Parameter[1] = {0};
@@ -1117,7 +1117,7 @@ static void halbtc8723b2ant_SetFwIgnoreWlanAct(
 }
 
 static void halbtc8723b2ant_IgnoreWlanAct(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bEnable
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bEnable
 )
 {
 	BTC_PRINT(
@@ -1145,7 +1145,7 @@ static void halbtc8723b2ant_IgnoreWlanAct(
 }
 
 static void halbtc8723b2ant_SetFwPstdma(
-	struct BTC_COEXIST * pBtCoexist,
+	struct BTC_COEXIST *pBtCoexist,
 	u8 byte1,
 	u8 byte2,
 	u8 byte3,
@@ -1184,7 +1184,7 @@ static void halbtc8723b2ant_SetFwPstdma(
 }
 
 static void halbtc8723b2ant_SwMechanism1(
-	struct BTC_COEXIST * pBtCoexist,
+	struct BTC_COEXIST *pBtCoexist,
 	bool bShrinkRxLPF,
 	bool bLowPenaltyRA,
 	bool bLimitedDIG,
@@ -1196,7 +1196,7 @@ static void halbtc8723b2ant_SwMechanism1(
 }
 
 static void halbtc8723b2ant_SwMechanism2(
-	struct BTC_COEXIST * pBtCoexist,
+	struct BTC_COEXIST *pBtCoexist,
 	bool bAGCTableShift,
 	bool bADCBackOff,
 	bool bSWDACSwing,
@@ -1208,10 +1208,10 @@ static void halbtc8723b2ant_SwMechanism2(
 }
 
 static void halbtc8723b2ant_SetAntPath(
-	struct BTC_COEXIST * pBtCoexist, u8 antPosType, bool bInitHwCfg, bool bWifiOff
+	struct BTC_COEXIST *pBtCoexist, u8 antPosType, bool bInitHwCfg, bool bWifiOff
 )
 {
-	struct BTC_BOARD_INFO * pBoardInfo = &pBtCoexist->boardInfo;
+	struct BTC_BOARD_INFO *pBoardInfo = &pBtCoexist->boardInfo;
 	u32 fwVer = 0, u4Tmp = 0;
 	bool bPgExtSwitch = false;
 	bool bUseExtSwitch = false;
@@ -1302,7 +1302,7 @@ static void halbtc8723b2ant_SetAntPath(
 }
 
 static void halbtc8723b2ant_PsTdma(
-	struct BTC_COEXIST * pBtCoexist, bool bForceExec, bool bTurnOn, u8 type
+	struct BTC_COEXIST *pBtCoexist, bool bForceExec, bool bTurnOn, u8 type
 )
 {
 	BTC_PRINT(
@@ -1434,7 +1434,7 @@ static void halbtc8723b2ant_PsTdma(
 	pCoexDm->prePsTdma = pCoexDm->curPsTdma;
 }
 
-static void halbtc8723b2ant_CoexAllOff(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_CoexAllOff(struct BTC_COEXIST *pBtCoexist)
 {
 	/*  fw all off */
 	halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, false, 1);
@@ -1450,7 +1450,7 @@ static void halbtc8723b2ant_CoexAllOff(struct BTC_COEXIST * pBtCoexist)
 	halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 0);
 }
 
-static void halbtc8723b2ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist)
 {
 	/*  force to reset coex mechanism */
 
@@ -1462,7 +1462,7 @@ static void halbtc8723b2ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist)
 	halbtc8723b2ant_SwMechanism2(pBtCoexist, false, false, false, 0x18);
 }
 
-static void halbtc8723b2ant_ActionBtInquiry(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_ActionBtInquiry(struct BTC_COEXIST *pBtCoexist)
 {
 	bool bWifiConnected = false;
 	bool bLowPwrDisable = true;
@@ -1490,7 +1490,7 @@ static void halbtc8723b2ant_ActionBtInquiry(struct BTC_COEXIST * pBtCoexist)
 	halbtc8723b2ant_SetAntPath(pBtCoexist, BTC_ANT_WIFI_AT_AUX, false, false);
 }
 
-static bool halbtc8723b2ant_IsCommonAction(struct BTC_COEXIST * pBtCoexist)
+static bool halbtc8723b2ant_IsCommonAction(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 btRssiState = BTC_RSSI_STATE_HIGH;
 	bool bCommon = false, bWifiConnected = false, bWifiBusy = false;
@@ -1591,7 +1591,7 @@ static bool halbtc8723b2ant_IsCommonAction(struct BTC_COEXIST * pBtCoexist)
 }
 
 static void halbtc8723b2ant_TdmaDurationAdjust(
-	struct BTC_COEXIST * pBtCoexist, bool bScoHid, bool bTxPause, u8 maxInterval
+	struct BTC_COEXIST *pBtCoexist, bool bScoHid, bool bTxPause, u8 maxInterval
 )
 {
 	static s32 up, dn, m, n, WaitCount;
@@ -2041,7 +2041,7 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
 }
 
 /*  SCO only or SCO+PAN(HS) */
-static void halbtc8723b2ant_ActionSco(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_ActionSco(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2096,7 +2096,7 @@ static void halbtc8723b2ant_ActionSco(struct BTC_COEXIST * pBtCoexist)
 }
 
 
-static void halbtc8723b2ant_ActionHid(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_ActionHid(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2157,7 +2157,7 @@ static void halbtc8723b2ant_ActionHid(struct BTC_COEXIST * pBtCoexist)
 }
 
 /* A2DP only / PAN(EDR) only/ A2DP+PAN(HS) */
-static void halbtc8723b2ant_ActionA2dp(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_ActionA2dp(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 wifiRssiState, wifiRssiState1, btRssiState;
 	u32 wifiBw;
@@ -2238,7 +2238,7 @@ static void halbtc8723b2ant_ActionA2dp(struct BTC_COEXIST * pBtCoexist)
 	}
 }
 
-static void halbtc8723b2ant_ActionA2dpPanHs(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_ActionA2dpPanHs(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2288,7 +2288,7 @@ static void halbtc8723b2ant_ActionA2dpPanHs(struct BTC_COEXIST * pBtCoexist)
 	}
 }
 
-static void halbtc8723b2ant_ActionPanEdr(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_ActionPanEdr(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2346,7 +2346,7 @@ static void halbtc8723b2ant_ActionPanEdr(struct BTC_COEXIST * pBtCoexist)
 
 
 /* PAN(HS) only */
-static void halbtc8723b2ant_ActionPanHs(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_ActionPanHs(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2396,7 +2396,7 @@ static void halbtc8723b2ant_ActionPanHs(struct BTC_COEXIST * pBtCoexist)
 }
 
 /* PAN(EDR)+A2DP */
-static void halbtc8723b2ant_ActionPanEdrA2dp(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_ActionPanEdrA2dp(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2457,7 +2457,7 @@ static void halbtc8723b2ant_ActionPanEdrA2dp(struct BTC_COEXIST * pBtCoexist)
 	}
 }
 
-static void halbtc8723b2ant_ActionPanEdrHid(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_ActionPanEdrHid(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2521,7 +2521,7 @@ static void halbtc8723b2ant_ActionPanEdrHid(struct BTC_COEXIST * pBtCoexist)
 }
 
 /*  HID+A2DP+PAN(EDR) */
-static void halbtc8723b2ant_ActionHidA2dpPanEdr(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_ActionHidA2dpPanEdr(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2581,7 +2581,7 @@ static void halbtc8723b2ant_ActionHidA2dpPanEdr(struct BTC_COEXIST * pBtCoexist)
 	}
 }
 
-static void halbtc8723b2ant_ActionHidA2dp(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_ActionHidA2dp(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 wifiRssiState, btRssiState;
 	u32 wifiBw;
@@ -2656,7 +2656,7 @@ static void halbtc8723b2ant_ActionHidA2dp(struct BTC_COEXIST * pBtCoexist)
 	}
 }
 
-static void halbtc8723b2ant_RunCoexistMechanism(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_RunCoexistMechanism(struct BTC_COEXIST *pBtCoexist)
 {
 	u8 algorithm = 0;
 
@@ -2755,7 +2755,7 @@ static void halbtc8723b2ant_RunCoexistMechanism(struct BTC_COEXIST * pBtCoexist)
 	}
 }
 
-static void halbtc8723b2ant_WifiOffHwCfg(struct BTC_COEXIST * pBtCoexist)
+static void halbtc8723b2ant_WifiOffHwCfg(struct BTC_COEXIST *pBtCoexist)
 {
 	bool bIsInMpMode = false;
 	u8 H2C_Parameter[2] = {0};
@@ -2780,7 +2780,7 @@ static void halbtc8723b2ant_WifiOffHwCfg(struct BTC_COEXIST * pBtCoexist)
 		pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x67, 0x20, 0x1); /* BT select s0/s1 is controlled by WiFi */
 }
 
-static void halbtc8723b2ant_InitHwConfig(struct BTC_COEXIST * pBtCoexist, bool bBackUp)
+static void halbtc8723b2ant_InitHwConfig(struct BTC_COEXIST *pBtCoexist, bool bBackUp)
 {
 	u8 u1Tmp = 0;
 
@@ -2814,9 +2814,9 @@ static void halbtc8723b2ant_InitHwConfig(struct BTC_COEXIST * pBtCoexist, bool b
 /*  */
 /*  extern function start with EXhalbtc8723b2ant_ */
 /*  */
-void EXhalbtc8723b2ant_PowerOnSetting(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtc8723b2ant_PowerOnSetting(struct BTC_COEXIST *pBtCoexist)
 {
-	struct BTC_BOARD_INFO * pBoardInfo = &pBtCoexist->boardInfo;
+	struct BTC_BOARD_INFO *pBoardInfo = &pBtCoexist->boardInfo;
 	u8 u1Tmp = 0x4; /* Set BIT2 by default since it's 2ant case */
 	u16 u2Tmp = 0x0;
 
@@ -2866,23 +2866,23 @@ void EXhalbtc8723b2ant_PowerOnSetting(struct BTC_COEXIST * pBtCoexist)
 	}
 }
 
-void EXhalbtc8723b2ant_InitHwConfig(struct BTC_COEXIST * pBtCoexist, bool bWifiOnly)
+void EXhalbtc8723b2ant_InitHwConfig(struct BTC_COEXIST *pBtCoexist, bool bWifiOnly)
 {
 	halbtc8723b2ant_InitHwConfig(pBtCoexist, true);
 }
 
-void EXhalbtc8723b2ant_InitCoexDm(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtc8723b2ant_InitCoexDm(struct BTC_COEXIST *pBtCoexist)
 {
 	BTC_PRINT(BTC_MSG_INTERFACE, INTF_INIT, ("[BTCoex], Coex Mechanism Init!!\n"));
 
 	halbtc8723b2ant_InitCoexDm(pBtCoexist);
 }
 
-void EXhalbtc8723b2ant_DisplayCoexInfo(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtc8723b2ant_DisplayCoexInfo(struct BTC_COEXIST *pBtCoexist)
 {
-	struct BTC_BOARD_INFO * pBoardInfo = &pBtCoexist->boardInfo;
-	struct BTC_STACK_INFO * pStackInfo = &pBtCoexist->stackInfo;
-	struct BTC_BT_LINK_INFO * pBtLinkInfo = &pBtCoexist->btLinkInfo;
+	struct BTC_BOARD_INFO *pBoardInfo = &pBtCoexist->boardInfo;
+	struct BTC_STACK_INFO *pStackInfo = &pBtCoexist->stackInfo;
+	struct BTC_BT_LINK_INFO *pBtLinkInfo = &pBtCoexist->btLinkInfo;
 	u8 *cliBuf = pBtCoexist->cliBuf;
 	u8 u1Tmp[4], i, btInfoExt, psTdmaCase = 0;
 	u32 u4Tmp[4];
@@ -3259,7 +3259,7 @@ void EXhalbtc8723b2ant_DisplayCoexInfo(struct BTC_COEXIST * pBtCoexist)
 }
 
 
-void EXhalbtc8723b2ant_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtc8723b2ant_IpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	if (BTC_IPS_ENTER == type) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], IPS ENTER notify\n"));
@@ -3276,7 +3276,7 @@ void EXhalbtc8723b2ant_IpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b2ant_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtc8723b2ant_LpsNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	if (BTC_LPS_ENABLE == type) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], LPS ENABLE notify\n"));
@@ -3287,7 +3287,7 @@ void EXhalbtc8723b2ant_LpsNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b2ant_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtc8723b2ant_ScanNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	if (BTC_SCAN_START == type) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN START notify\n"));
@@ -3296,7 +3296,7 @@ void EXhalbtc8723b2ant_ScanNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b2ant_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtc8723b2ant_ConnectNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	if (BTC_ASSOCIATE_START == type) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], CONNECT START notify\n"));
@@ -3305,7 +3305,7 @@ void EXhalbtc8723b2ant_ConnectNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
 	}
 }
 
-void EXhalbtc8723b2ant_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtc8723b2ant_MediaStatusNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	u8 H2C_Parameter[3] = {0};
 	u32 wifiBw;
@@ -3351,7 +3351,7 @@ void EXhalbtc8723b2ant_MediaStatusNotify(struct BTC_COEXIST * pBtCoexist, u8 typ
 	pBtCoexist->fBtcFillH2c(pBtCoexist, 0x66, 3, H2C_Parameter);
 }
 
-void EXhalbtc8723b2ant_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 type)
+void EXhalbtc8723b2ant_SpecialPacketNotify(struct BTC_COEXIST *pBtCoexist, u8 type)
 {
 	if (type == BTC_PACKET_DHCP) {
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], DHCP Packet notify\n"));
@@ -3359,7 +3359,7 @@ void EXhalbtc8723b2ant_SpecialPacketNotify(struct BTC_COEXIST * pBtCoexist, u8 t
 }
 
 void EXhalbtc8723b2ant_BtInfoNotify(
-	struct BTC_COEXIST * pBtCoexist, u8 *tmpBuf, u8 length
+	struct BTC_COEXIST *pBtCoexist, u8 *tmpBuf, u8 length
 )
 {
 	u8 	btInfo = 0;
@@ -3503,7 +3503,7 @@ void EXhalbtc8723b2ant_BtInfoNotify(
 	halbtc8723b2ant_RunCoexistMechanism(pBtCoexist);
 }
 
-void EXhalbtc8723b2ant_HaltNotify(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtc8723b2ant_HaltNotify(struct BTC_COEXIST *pBtCoexist)
 {
 	BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Halt notify\n"));
 
@@ -3514,7 +3514,7 @@ void EXhalbtc8723b2ant_HaltNotify(struct BTC_COEXIST * pBtCoexist)
 	EXhalbtc8723b2ant_MediaStatusNotify(pBtCoexist, BTC_MEDIA_DISCONNECT);
 }
 
-void EXhalbtc8723b2ant_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState)
+void EXhalbtc8723b2ant_PnpNotify(struct BTC_COEXIST *pBtCoexist, u8 pnpState)
 {
 	BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify\n"));
 
@@ -3528,7 +3528,7 @@ void EXhalbtc8723b2ant_PnpNotify(struct BTC_COEXIST * pBtCoexist, u8 pnpState)
 	}
 }
 
-void EXhalbtc8723b2ant_Periodical(struct BTC_COEXIST * pBtCoexist)
+void EXhalbtc8723b2ant_Periodical(struct BTC_COEXIST *pBtCoexist)
 {
 	static u8 disVerInfoCnt;
 	u32 fwVer = 0, btPatchVer = 0;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

