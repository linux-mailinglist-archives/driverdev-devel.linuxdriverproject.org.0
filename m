Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D7136FF23
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Apr 2021 19:05:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F6634314D;
	Fri, 30 Apr 2021 17:05:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hJI_DTGNXgwX; Fri, 30 Apr 2021 17:05:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C0504314A;
	Fri, 30 Apr 2021 17:05:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0AD871BF381
 for <devel@linuxdriverproject.org>; Fri, 30 Apr 2021 17:04:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0791084A24
 for <devel@linuxdriverproject.org>; Fri, 30 Apr 2021 17:04:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mailo.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mAyvC-REL8YC for <devel@linuxdriverproject.org>;
 Fri, 30 Apr 2021 17:04:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 936C9848A1
 for <devel@driverdev.osuosl.org>; Fri, 30 Apr 2021 17:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
 t=1619802283; bh=0XYa1cIxMp6ry7BQp+iBAAMsYjpA9bq5oFPYJviKL0w=;
 h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
 MIME-Version:Content-Type:In-Reply-To;
 b=CGHicr48z/LSUIZrWWhvySxy8jwRIV1rDCIKuQnzq1e4hYpeXBukRSSnGwXm6OtBr
 KpHhICYLX852NNtZ44q2S9GBeXoH0K1hZzJSiEGubTi93sxcTlMNw9s2I1gzcdLjRX
 bOuF+agnozRs5o4iU0hvy9pAYv2LgACs/jwj01Sk=
Received: by 192.168.90.14 [192.168.90.14] with ESMTP
 via ip-206.mailobj.net [213.182.55.206]
 Fri, 30 Apr 2021 19:04:42 +0200 (CEST)
X-EA-Auth: x1MTBCL9u+Tyv0hPP6OEHuOnfuipMqcNBjSighRosnNz+Uikl3zpO/rcsjcNSUUcPVi/6ms77KTeY8y5WGGdYeqRi/ZRL7Q8
Date: Fri, 30 Apr 2021 22:34:37 +0530
From: Deepak R Varma <drv@mailo.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH] staging: media: atomisp: pci: reposition braces as per
 coding style
Message-ID: <YIw4pUzTOHV6E9WZ@dU2104>
References: <YIwk3KbVGRPJwKa4@dU2104>
 <20210430163327.GI3@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210430163327.GI3@paasikivi.fi.intel.com>
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
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Apr 30, 2021 at 07:33:27PM +0300, Sakari Ailus wrote:
> Hi Deepak,
> 
> If you're touching all these lines, I might do a little more. Please see
> the comments below.
> 
Hello Sakari,
I can definitely include other changes, but then it will be many different
types of changes into a single patch. Will that be okay?

I was planning to address one issue per patch as I think the volume of
change is going to be high.  I mentioned that in the notes section of the patch
message.

Let me know if you still suggest I combine those.

Thank you,
deepak.



> On Fri, Apr 30, 2021 at 09:10:12PM +0530, Deepak R Varma wrote:
> > Misplaced braces makes it difficult to follow the code easily. This also
> > goes against the code style guidelines. This resolved following checkpatch
> > complaints:
> > 
> > ERROR: open brace '{' following function definitions go on the next line
> > ERROR: that open brace { should be on the previous line
> > 
> > Signed-off-by: Deepak R Varma <drv@mailo.com>
> > ---
> > 
> > Please Note: There are several other checkpatch triggered warnings and
> > errors that should be addressed in separate patches.
> > 
> > 
> >  .../staging/media/atomisp/pci/atomisp_csi2.c  |   3 +-
> >  .../staging/media/atomisp/pci/sh_css_mipi.c   |  69 +++----
> >  .../staging/media/atomisp/pci/sh_css_params.c | 171 ++++++++----------
> >  drivers/staging/media/atomisp/pci/sh_css_sp.c | 108 +++++------
> >  .../media/atomisp/pci/sh_css_version.c        |   3 +-
> >  5 files changed, 157 insertions(+), 197 deletions(-)
> > 
> > diff --git a/drivers/staging/media/atomisp/pci/atomisp_csi2.c b/drivers/staging/media/atomisp/pci/atomisp_csi2.c
> > index 060b8765ae96..200f16994f3a 100644
> > --- a/drivers/staging/media/atomisp/pci/atomisp_csi2.c
> > +++ b/drivers/staging/media/atomisp/pci/atomisp_csi2.c
> > @@ -29,7 +29,8 @@ static struct v4l2_mbus_framefmt *__csi2_get_format(struct
> >  	v4l2_subdev_pad_config *cfg,
> >  	enum
> >  	v4l2_subdev_format_whence
> 
> You could have more arguments on the same line up to 80 characters per
> line.
> 
> > -	which, unsigned int pad) {
> > +	which, unsigned int pad)
> > +{
> >  	if (which == V4L2_SUBDEV_FORMAT_TRY)
> >  		return v4l2_subdev_get_try_format(&csi2->subdev, cfg, pad);
> >  	else
> > diff --git a/drivers/staging/media/atomisp/pci/sh_css_mipi.c b/drivers/staging/media/atomisp/pci/sh_css_mipi.c
> > index 3f34cc81be87..75489f7d75ee 100644
> > --- a/drivers/staging/media/atomisp/pci/sh_css_mipi.c
> > +++ b/drivers/staging/media/atomisp/pci/sh_css_mipi.c
> > @@ -91,7 +91,8 @@ ia_css_mipi_frame_calculate_size(const unsigned int width,
> >  				 const enum atomisp_input_format format,
> >  				 const bool hasSOLandEOL,
> >  				 const unsigned int embedded_data_size_words,
> > -				 unsigned int *size_mem_words) {
> > +				 unsigned int *size_mem_words)
> > +{
> >  	int err = 0;
> >  
> >  	unsigned int bits_per_pixel = 0;
> > @@ -118,8 +119,7 @@ ia_css_mipi_frame_calculate_size(const unsigned int width,
> >  	IA_CSS_ENTER("padded_width=%d, height=%d, format=%d, hasSOLandEOL=%d, embedded_data_size_words=%d\n",
> >  		     width_padded, height, format, hasSOLandEOL, embedded_data_size_words);
> >  
> > -	switch (format)
> > -	{
> > +	switch (format) {
> >  	case ATOMISP_INPUT_FORMAT_RAW_6:		/* 4p, 3B, 24bits */
> >  		bits_per_pixel = 6;
> >  		break;
> > @@ -178,12 +178,10 @@ ia_css_mipi_frame_calculate_size(const unsigned int width,
> >  	/* Even lines for YUV420 formats are double in bits_per_pixel. */
> >  	if (format == ATOMISP_INPUT_FORMAT_YUV420_8
> >  	    || format == ATOMISP_INPUT_FORMAT_YUV420_10
> > -	    || format == ATOMISP_INPUT_FORMAT_YUV420_16)
> > -	{
> > +	    || format == ATOMISP_INPUT_FORMAT_YUV420_16) {
> >  		even_line_bytes = (width_padded * 2 * bits_per_pixel + 7) >>
> >  			3; /* ceil ( bits per line / 8) */
> > -	} else
> > -	{
> > +	} else {
> >  		even_line_bytes = odd_line_bytes;
> >  	}
> >  
> > @@ -236,7 +234,8 @@ ia_css_mipi_frame_calculate_size(const unsigned int width,
> >  #if !defined(ISP2401)
> >  int
> >  ia_css_mipi_frame_enable_check_on_size(const enum mipi_port_id port,
> > -				       const unsigned int	size_mem_words) {
> > +				       const unsigned int	size_mem_words)
> 
> Tab after int, should be a space.
> 
> > +{
> >  	u32 idx;
> >  
> >  	int err = -EBUSY;
> > @@ -246,11 +245,9 @@ ia_css_mipi_frame_enable_check_on_size(const enum mipi_port_id port,
> >  
> >  	for (idx = 0; idx < IA_CSS_MIPI_SIZE_CHECK_MAX_NOF_ENTRIES_PER_PORT &&
> >  	     my_css.mipi_sizes_for_check[port][idx] != 0;
> > -	     idx++)   /* do nothing */
> > -	{
> > +	     idx++) { /* do nothing */
> >  	}
> 
> A semicolon suffices here. I guess this could be also written as:
> 
> 	for (idx = 0; idx < ... & ... != 0; )
> 		idx++;
> 
> As it's easy to just miss the semicolon at the end of the for loop.
> 
> > -	if (idx < IA_CSS_MIPI_SIZE_CHECK_MAX_NOF_ENTRIES_PER_PORT)
> > -	{
> > +	if (idx < IA_CSS_MIPI_SIZE_CHECK_MAX_NOF_ENTRIES_PER_PORT) {
> >  		my_css.mipi_sizes_for_check[port][idx] = size_mem_words;
> >  		err = 0;
> >  	}
> > @@ -271,7 +268,8 @@ mipi_init(void)
> >  int
> >  calculate_mipi_buff_size(
> >      struct ia_css_stream_config *stream_cfg,
> > -    unsigned int *size_mem_words) {
> > +    unsigned int *size_mem_words)
> 
> I think both arguments might fit on the same line. If not, then the return
> type (int) does. I think there are other similar cases.
> 
> > +{
> >  #if !defined(ISP2401)
> >  	int err = -EINVAL;
> >  	(void)stream_cfg;
> > @@ -346,12 +344,10 @@ calculate_mipi_buff_size(
> >  
> >  	/* Even lines for YUV420 formats are double in bits_per_pixel. */
> >  	if (format == ATOMISP_INPUT_FORMAT_YUV420_8
> > -	    || format == ATOMISP_INPUT_FORMAT_YUV420_10)
> > -	{
> > +	    || format == ATOMISP_INPUT_FORMAT_YUV420_10) {
> >  		even_line_bytes = (width_padded * 2 * bits_per_pixel + 7) >>
> >  			3; /* ceil ( bits per line / 8) */
> 
> You don't need braces here.
> 
> > -	} else
> > -	{
> > +	} else {
> >  		even_line_bytes = odd_line_bytes;
> >  	}
> >  
> > @@ -393,7 +389,8 @@ static bool buffers_needed(struct ia_css_pipe *pipe)
> >  
> >  int
> >  allocate_mipi_frames(struct ia_css_pipe *pipe,
> > -		     struct ia_css_stream_info *info) {
> > +		     struct ia_css_stream_info *info)
> > +{
> >  	int err = -EINVAL;
> >  	unsigned int port;
> >  
> > @@ -402,8 +399,7 @@ allocate_mipi_frames(struct ia_css_pipe *pipe,
> >  
> >  	assert(pipe);
> >  	assert(pipe->stream);
> > -	if ((!pipe) || (!pipe->stream))
> > -	{
> > +	if ((!pipe) || (!pipe->stream)) {
> 
> Extra parentheses.
> 
> -- 
> Kind regards,
> 
> Sakari Ailus


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
