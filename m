Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0534A2A405
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 13:36:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 502F322850;
	Sat, 25 May 2019 11:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZUuF458O8xJt; Sat, 25 May 2019 11:36:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5F55C227A0;
	Sat, 25 May 2019 11:36:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6031D1BF408
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 11:36:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5AEF78899E
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 11:36:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DBlBRogi9KMV for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 11:36:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb1-smtp-cloud9.xs4all.net (lb1-smtp-cloud9.xs4all.net
 [194.109.24.22])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8542088993
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 11:36:30 +0000 (UTC)
Received: from [IPv6:2001:983:e9a7:1:6081:f7d7:b93c:24af]
 ([IPv6:2001:983:e9a7:1:6081:f7d7:b93c:24af])
 by smtp-cloud9.xs4all.net with ESMTPA
 id UUyQhPCuZsDWyUUyRhUFdc; Sat, 25 May 2019 13:36:28 +0200
Subject: Re: [PATCH v5 3/4] media: pixfmt: Document the HEVC slice pixel format
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
References: <20190524093635.1832-1-paul.kocialkowski@bootlin.com>
 <20190524093635.1832-4-paul.kocialkowski@bootlin.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <de925df1-e15e-6293-31b5-b046060e7359@xs4all.nl>
Date: Sat, 25 May 2019 13:36:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190524093635.1832-4-paul.kocialkowski@bootlin.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfL5ASQGLGKFdBxYetB5w++UJszYGQx9k/wzBFOSR0d1qvZS8Dyyn9JMjmSBnoMDWOPuEkfLPS+B9eJV4AXBrcbrQ8rKdPJD3VlNeP9BgVFDQyJMtVG8e
 NdcszGQdoOq6xbmoeJI5TlASl41wxbKOXnlYhsbP7imNZSHMlmoliT3GGSQg9MzWbMpcNHsUyaQ9i4BlwJKaNq7A5nHlCpNlNvP+EXqSNioz3biSS669EmIg
 CtYfm/AclOe1UeaPKc3/aDioOvAjzrXYYdWKk6xGTSi/QxRiw3b+kjAfMHK802x7mHlUQH3IRoGiceW8C9fkka0e8XB3Ma2cNjQ2+6ocukUDEo/c48AFZx0u
 qLDrUPcgP3ZLXoowScD55gR3K030KQbKnBAxJWhc3Vopfu2x88JLMn/FrW6AQYJrt5k0pMP3cqOIQhdYV0dY9PmaRxzZx6yAw4HGW36FjkWW50Pfo0sVYybv
 D8JJTAVew5NVqf5xUUAy3H6sGsMIm77HSNtGfuUh3lpfilNUxThMdVtoyvSLRFFAZlRsr2c4/PH7hSVMNfvXlqZ0h2RwuqzlgFF9Ec60tjIlszGRFt7ejqWw
 tO/Epet1eDCs9mXuCXFJE/+Fe+sf9i6rppSys54pFSPgcB6Asf0h3cXyPxbH8gvcTtrZ/Iz9JA0p225QJ9ZAf3B55L1PJN+kgYctd3vQqVh1bmIwoeXY82NI
 +nvO2Ff5XT38voye3UdfMdjCdJJbSpJ9N2k0hRshCZvGxSSZGitczTX5aAAwIuepT3tzpFSLpsvMwU2M5P6SpGb/y0pstXOPYBdcS2pf31u50lmdGrj4OOgB
 /1B2HzykKbyzRQAvS1yk2tiAWjBddRcAskMJJ0Zqgc4aRyeEVB1XObgy53gyQQ==
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
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Alexandre Courbot <acourbot@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tomasz Figa <tfiga@chromium.org>, Chen-Yu Tsai <wens@csie.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 5/24/19 11:36 AM, Paul Kocialkowski wrote:
> Document the current state of the HEVC slice pixel format.
> The format will need to evolve in the future, which is why it is
> not part of the public API.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../media/uapi/v4l/pixfmt-compressed.rst      | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/Documentation/media/uapi/v4l/pixfmt-compressed.rst b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
> index 4b701fc7653e..9d4195723c3e 100644
> --- a/Documentation/media/uapi/v4l/pixfmt-compressed.rst
> +++ b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
> @@ -143,6 +143,27 @@ Compressed Formats
>        - ``V4L2_PIX_FMT_HEVC``
>        - 'HEVC'
>        - HEVC/H.265 video elementary stream.
> +    * .. _V4L2-PIX-FMT-HEVC-SLICE:
> +
> +      - ``V4L2_PIX_FMT_HEVC_SLICE``
> +      - 'S265'
> +      - HEVC parsed slice data, as extracted from the HEVC bitstream.
> +	This format is adapted for stateless video decoders that implement a
> +	HEVC pipeline (using the :ref:`codec` and :ref:`media-request-api`).

Should be :ref:`mem2mem`.

Regards,

	Hans

> +	Metadata associated with the frame to decode is required to be passed
> +	through the following controls :
> +        * ``V4L2_CID_MPEG_VIDEO_HEVC_SPS``
> +        * ``V4L2_CID_MPEG_VIDEO_HEVC_PPS``
> +        * ``V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS``
> +	See the :ref:`associated Codec Control IDs <v4l2-mpeg-hevc>`.
> +	Buffers associated with this pixel format must contain the appropriate
> +	number of macroblocks to decode a full corresponding frame.
> +
> +	.. note::
> +
> +	   This format is not yet part of the public kernel API and it
> +	   is expected to change.
> +
>      * .. _V4L2-PIX-FMT-FWHT:
>  
>        - ``V4L2_PIX_FMT_FWHT``
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
