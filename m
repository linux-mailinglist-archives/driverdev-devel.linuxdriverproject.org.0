Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 914FF16A20D
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 10:22:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 875CC86F1B;
	Mon, 24 Feb 2020 09:22:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z9vGcn341Oj2; Mon, 24 Feb 2020 09:22:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2EC8686E88;
	Mon, 24 Feb 2020 09:22:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A1BB01BF40B
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 09:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9DFBC85C11
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 09:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xechzu5FvFQb for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 09:22:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2073.outbound.protection.outlook.com [40.107.223.73])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1EBA085BC8
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 09:22:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VJXt7jd/xxZouvGtG2m6eJ/BgKUMvyoGhmhn/jTQAad7E6rlilZXVj9ypDdKLBn3H0U6hIOLJZheyT6aZVzXL4Vt1kXIvYCLXrvJ8OaXpjp4+MTr5lZizncJshs7yJbqDVminK9JI+td03jIaU1Y/ABbpZIi4ChCkl1aoc1Gep/kE8vcmB4bbQpCGblJez0LG0SFs4nbxOVcrRbcUwQmAMoMYaCV040an5Wz22dLOladu3DhK4sDCl2/r70HtPv4G5Ab/pw7GHK5cgb1OTffYk0IOsEf7t9V+Vd9ekE5BbBWL3Ol/xKMH1kzhJfcyWP9oHaQcGjYrJjoftTcyGWKhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KcLbK273J8pdWk5kpNaxPZjWwPRW+1DLGADvAIl2gOY=;
 b=DIcisVS9R3mltgglX4udGYAvTjEXkhY+WCKBkTqMnW9nOk1TjZHXTURpVG+floZ3igD3JPO+h2rKcNaJqp/yQ0JZfMhzubnncgrfFOqNSZDBbx/IEjzLPA8iweKi5lww1AW6OgwbvU7UrnLuIDNq4f93vhtcT9dxpOox42X/8iJuxSnEhs7WLud95/YFNJweIsOASr5s/M/A8wbdbNfJqNdpcX83d8qip+EqWKrRHGkrpuzC5mqjF0fHf2AKcpVqJm+3zu7/fQ5q2PrldGb/QZ680vHMo1DyWw1VaP/T2bDi0nRRrgS630DYlDQ2v4mJA7RzE9yh60BNT8/h/ScmHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KcLbK273J8pdWk5kpNaxPZjWwPRW+1DLGADvAIl2gOY=;
 b=JCSUQpJXaQwqwaelS//h4yLIeETE7BQGVn/geUyARs1YbmyuD1oMiTAedTG/QZFAeUpWiXElF4+v3Z015Qaas8TjOo0I6lVxScIf2eMm1+1FycyT9ytHMpQ59h9irzeIo0miDt/11r1zIbMiTPoW4pwq6ccOvoSajIY6EYQRqKs=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (2603:10b6:208:13f::22)
 by MN2PR11MB4647.namprd11.prod.outlook.com (2603:10b6:208:262::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Mon, 24 Feb
 2020 09:22:36 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3%7]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 09:22:36 +0000
From: =?iso-8859-1?Q?J=E9r=F4me_Pouiller?= <Jerome.Pouiller@silabs.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH] staging: wfx: match parentheses alignment
Thread-Topic: [PATCH] staging: wfx: match parentheses alignment
Thread-Index: AQHV6n/1fjfjb+Ut6UKRnjRXKA1ltqgqEuWA
Date: Mon, 24 Feb 2020 09:22:36 +0000
Message-ID: <1761697.Ie2Hvvaxtr@pc-42>
References: <20200223193201.GA20843@kaaira-HP-Pavilion-Notebook>
In-Reply-To: <20200223193201.GA20843@kaaira-HP-Pavilion-Notebook>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 723035f2-c5db-40f7-67f6-08d7b90b1673
x-ms-traffictypediagnostic: MN2PR11MB4647:
x-microsoft-antispam-prvs: <MN2PR11MB4647272B35E1C33E7273D9FD93EC0@MN2PR11MB4647.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:291;
x-forefront-prvs: 032334F434
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(396003)(39850400004)(366004)(376002)(346002)(136003)(189003)(199004)(4326008)(6506007)(76116006)(6486002)(91956017)(186003)(6916009)(66446008)(66476007)(66556008)(64756008)(66946007)(86362001)(26005)(33716001)(9686003)(5660300002)(6512007)(478600001)(8936002)(81166006)(81156014)(8676002)(2906002)(316002)(54906003)(71200400001)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4647;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qMYqFIOPD1qrLZgepEMsDiR+8zjSYCMjvfnV2ZtrStIQaG0RK98hAASrUqEIq5jj7YcNXstZNlPY6nYQ2/iGBM5zy5HFgkE90G9UWWwv0fnEv8VRzHaIMYLVln8OIfLgples7vfoinGf6ZeZIDCs61PXkHd5Sz0Bb8z1NeOeWmc8JfW+CHHeR/4eHdJOoMuGGge0JgIqWZQlu6ngsb+NdaDn+q7vgWvVSpEdoQXOcSQm/CaCXrD4AsFFiugd0zgfGKdLj/xRLPrp840tbAhQ28vAr8tevE9wYXNiF7NlNtfBFirR4ms0lLQnbNVeDjDZXkgOBC+emG/Gje7kLZo3PlDEvpPQVrdQKqzssS9lNZZns88VimXB816PtL5ofwWwcfQeQvYqRVBbYJR5jWRM3Np0gt2ordjCFoL/Vh433EAT3W8DZI6zi6Qvt7XcpeDojz+CXL5jCI8TpLYdOG+lIo3h3GUWWK8aio00WpN6niISM9+UaEBBDKAaLyU7zhaV
x-ms-exchange-antispam-messagedata: LCJHsx4uNuVqsnCmds1Dt/0+PMjwF5W+WgExSUp975WurS4PD/Wz5wSic8e6NZtTPjSr3RziZGEoqa+4YlM0B/13MSzC5AHvj2WcMXjG6CeDvGvATui9DtDBLctBjyuxNWUXY5EtnK+8VKVXC3kV4A==
x-ms-exchange-transport-forked: True
Content-ID: <4E04A9827DD96342BA833B6FD78F017F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 723035f2-c5db-40f7-67f6-08d7b90b1673
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2020 09:22:36.6186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ptk6FW0GLTEjw5wlB+qemzKnkVQfqoZ45GGVpHnfN/A3T48OwzFf1XcXLjPcb4c/KttclAvOu3LcmuVTZpH2Sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4647
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sunday 23 February 2020 20:32:01 CET Kaaira Gupta wrote:
> =

> match next line with open parentheses by giving appropriate tabs.

Maybe the body of the commit message should start with a capital letter,
else:

Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

> =

> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/wfx/data_tx.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
> index 20f4740734f2..815fde0913f5 100644
> --- a/drivers/staging/wfx/data_tx.c
> +++ b/drivers/staging/wfx/data_tx.c
> @@ -300,8 +300,8 @@ static void wfx_tx_manage_pm(struct wfx_vif *wvif, st=
ruct ieee80211_hdr *hdr,
>  }
> =

>  static u8 wfx_tx_get_raw_link_id(struct wfx_vif *wvif,
> -                                     struct ieee80211_sta *sta,
> -                                     struct ieee80211_hdr *hdr)
> +                                struct ieee80211_sta *sta,
> +                                struct ieee80211_hdr *hdr)
>  {
>         struct wfx_sta_priv *sta_priv =3D
>                 sta ? (struct wfx_sta_priv *) &sta->drv_priv : NULL;
> @@ -368,7 +368,7 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_ra=
te *rates)
>  }
> =

>  static u8 wfx_tx_get_rate_id(struct wfx_vif *wvif,
> -                                 struct ieee80211_tx_info *tx_info)
> +                            struct ieee80211_tx_info *tx_info)
>  {
>         bool tx_policy_renew =3D false;
>         u8 rate_id;


-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
